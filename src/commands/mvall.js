const Main = require('../main')
const client = Main.client
const Mysql = Main.mysql
const Embeds = require('../util/embeds')
const Discord = require('discord.js')
const util = require('util')
const Statics = require('../util/statics')


exports.ex = (msg, args) => {

    if (args.length < 1) {
        Embeds.invalidInput(msg.channel, 'mvall')
        return
    }

    let guild = msg.member.guild

    let chan = guild.channels.find(c => c.id == args[0] && c.type == 'voice')
    if (!chan)
        chan = guild.channels.find(c => c.name.toLowerCase().indexOf(args.join(' ').toLowerCase()) > -1 && c.type == 'voice')
    if (!chan)
        Embeds.error(msg.channel, `Can not fetch any voice channel to the input \`\`\`${args.join(' ')}\`\`\``)
    else {
        let cvc = msg.member.voiceChannel
        if (cvc) {
            cvc.members.forEach(m => {
                try {
                    m.setVoiceChannel(chan)
                }
                catch (e) {}
            })
            Embeds.default(msg.channel, `Moved all voice members from channel \`${cvc.name}\` to channel \`${chan.name}\``)
        }
        else {
            Embeds.error(msg.channel, 'You need to be in a voice channel to use this command!')
        }
    }
}
This template introduces no new features or alterations to *UZDoom* usage. Instead, it serves as an efficient foundation for rapidly developing a total conversion allowing you to learn lump functionality while targeting the ZDoom source port family and *ZScript*.

If you like what you see, feel free to adapt it to fit your project.

### Quick Summary

- ZScript-focused learning
- All essential lumps already created
- Folder architecture (sprites, textures, etc...)
- Brief explanation for each lump
- Custom "Options Menu" template
- Custom assets templates
- Basic Actors templates (player, pillar, blood, etc...)
- Simple HUD template
- Replaces all engine actors with nothing (Event Handler)
- Two maps with modifications and demonstrations
- Engine sprites replaced with blank versions

---

### What's the purpose?  

This template was created to accelerate the process of building a total conversion from scratch. If you want to remove the original games and *UZDoom* defaults, it helps you do so more efficiently. All essential lumps are already included to ensure you don't overlook anything.
   
### What's in this template?

Nothing from the official games is used, only empty images with the same names where necessary. Some *UZDoom* default sprites and textures have also been replaced with blank versions to facilitate cleanup or to enable custom versions of features that cannot be built entirely from scratch.

Most assets were created specifically for this template, except for one monster, one weapon (a basic custom from FreeDOOM), and a couple of music tracks created and credited to DoomKid from his official website. (Please do not use music from other creators in your commercial game without permission; the DoomKid tracks here are intended only as placeholders.)

### The template is ready to use?

Yes and no.

*If you are familiar with the process*: Simply remove all unnecessary lumps, clean the template assets, and delete the testing maps and music files within the **.pk3** archive. This provides you with a foundational root folder architecture that you can customize and organize as required. All essential lumps are already included, so exclude only those you do not intend to use.

*If you want to learn the engine and ZScript*: All lumps include practical examples and a brief summary of their purpose. You can modify values and observe the results. For *ZScript*, you will find examples with comments, presented in the simplest way to accomplish each task.

### How to use it?

If you have prior experience working with **ZDoom**, the process is essentially the same but better organized with boilerplate code. It also includes a few *ZScript* and lump files to help remove original game information, such as **GlobalActorsReplaces.zs**, which replace Doom engine game classes and causes the console to fail when summoning native actors. For example, attempting to summon a **Zombieman** will trigger an error message, replace the actor with nothing, and destroy it sequentially. Another example is the **MENUDEF** lump, which overrides the native options page, you can simply modify it to suit your needs.

### Recommendation for New Mappers

If you have no experience with *UZDoom* or map making in general, I recommend reading each lump file (the all-caps ones). Understand their purpose by reviewing the summary, consult the provided documentation links for more details, and experiment by modifying values or replacing assets. Most features are straightforward to grasp, and a few examples are sufficient to learn how to use them.

All template *ZScript* files include code explanations (comments) to help you follow the logic more easily. In the end, you'll see that it is not as complicated as it seems. If you have any experience with object-oriented programming, you already know how to accomplish most tasks.


























    


GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/22/2017 3:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/22/2017 3:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/22/2017 3:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/22/2017 3:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/22/2017 3:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tenants]    Script Date: 2/22/2017 3:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tenants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Tenants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201701120941183_InitialCreate', N'WebApi2StarterKit.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C6D6FE33612FE7E40FF83A04FED21B512E776B117D82D5227E905DDBC609DEDF5DB82966887588952252A4D70B85F761FEE27DD5FB8A144C9125FF4622BB6532CB088C8E133C3E1901C0E87FEDF7FFE3BF9F139F0AD271C2724A453FB64746C5B98BAA147E86A6AA76CF9FD07FBC71FBEF9CBE4D20B9EAD5F0BBA534E072D6932B51F198BCE1C27711F7180925140DC384CC2251BB961E0202F74C6C7C77F774E4E1C0C10366059D6E4534A190970F6019FB390BA386229F26F420FFB8928879A79866ADDA200271172F1D4FE275E9C47643C67286638FE85B051DEC6B6CE7D82409E39F697B685280D196220EDD9E704CF591CD2D53C8202E43FBC4418E896C84FB0E8C5D99ABC6B878EC7BC43CEBA6101E5A6090B839E8027A742438EDC7C233DDBA506418797A06BF6C27B9DE9716A5F7B382BFA14FAA00099E1D9CC8F39F1D4BE29599C27D12D66A3A2E12887BC8A01EE8F30FE3AAA221E599DDB1D9516351E1DF37F47D62CF5591AE329C5298B917F64DDA70B9FB8BFE09787F02BA6D3D393C5F2F4C3BBF7C83B7DFF377CFAAEDA53E82BD0D50AA0E83E0E231C836C7859F6DFB69C7A3B476E5836ABB4C9B502B60493C3B66ED0F3474C57EC11A6CDF8836D5D9167EC1525C2B83E530273091AB13885CFDBD4F7D1C2C765BDD3C893FFDFC075FCEEFD205C6FD1135965432FF1878913C3BCFA84FDAC367924513EBD6AE3FD45905DC561C0BFEBF695D77E998769ECF2CE8446920714AF30AB4B3771D6C6DBC9A439D4F0665DA01EBE69734955F3D692F20E6D32130A16BB9E0D85BCAFCBB7B3C59D47110C5E665A5C234D0667DAB24612C691A550AECDE8A4AB1951E8DE9F7955BC0C10F10758163B7001BF6449E20097BDFC29042344B4B7CCF728496055F0FE8192C706D1E1CF01449F63378DC158C18A82E8D5B9DD3F8614DFA6C182CF81DDF11A6C681EFE08AF90CBC2F892F2565BE37D0CDDAF61CA2EA9778118FECCDC02907F3E90A03BC020E29CBB2E4E922B3066ECCD4270BB0BC06BCA4EC7BDE1F832B56FB764E62312E8FD126941FD5290AE7D133D85E29F18C8743E4A93A81FC315A1DD442D48CDA2E614ADA20AB2BEA272B06E920A4AB3A01941AB9C39D5605E5F3642C3BB7D19ECE1FB7DDB6DDEA6B5A0A2C639AC90F8674C710CCB98778F18F827743D025DD68D7D380BD9F071A6AFBE37659C7E457E3A34AB8D6643B6080C3F1B32D8C39F0D999850FC443CEE9574380C15C400DF895E7FCE6A9F739264BB9E0EB56EEE9AF96ED600D374394F92D025D92CD084C14410A32E3FF870567B4423EF8D1C15818E81A113BEE54109F4CD968DEA8E5E601F336C9DBB79987086121779AA1AA1435E0FC18A1D5523D83A3A5217EEAF0A4FB0741CF346881F821298A98432755A10EA9208F9AD5A925A76DCC278DF4B1E72CD058E30E50C5B35D185B93E18C20528F94883D2A6A18953B1B866433478ADA6316F7361D7E3AEC4287662932DBEB3C12E85FFF62A86D9ACB11D1867B34ABA08600CECEDC340C559A5AB01C80797433350E9C4643050E152EDC440EB1ADB8381D655F2E60C343FA2761D7FE9BC7A68E6593F28EF7E5B6F54D71E6CB3A68F0333CDDCF784360C5AE05835CF8B05AFC4CF4C73380339C5F92C11AEAE6C221C7C8E593D64B3F677B57EA8D30C221B5113E0DAD05A40C595A002A44CA81EC215B1BC46E98417D103B688BB35C28AB55F82ADD8808A5DBD1AAD109A2F5065E3EC74FA287B565A8362E49D0E0B151C8D41C88B57BDE31D94628ACBAA8AE9E20BF7F1862B1D1383D1A0A016CFD5A0A4A233836BA930CD762DE91CB23E2ED9565A92DC2783968ACE0CAE2561A3ED4AD238053DDC82AD5454DFC2079A6C45A4A3DC6DCABA8993E74D8982896348B09ADCA02822745549B81225D63CCFB69A7D3FEF9F8014E4188E9B68F2904A694B4E2C8CD10A4BB5C01A24BD2271C22E10430BC4E33C332F50C8B47BAB61F92F5856B74F75108B7DA0A0E67FE72D8C17F9B51D57754904D215F433E07E4D164CD75881BEB9C5D3E0908F624DFC7E16FA6940CD6E96B9757E8B576D9F97A8081347925F71A3149D29CE6E7D003A0D8F3A35061DAAD297D97CB8CC1026A5179E6855ED26EFD48C5204ABAA28A600D6DE86CFE4D46C3064B2D7D87FC45A115E678E8954952A8028EA8951C97650C02A75DD51EB092955CC7A4D774429EBA40A2955F590B29A5B5213B25AB1119E41A37A8AEE1CD46C922ABA5ADB1D5993575285D6546F80AD9159AEEB8EAA493DA9026BAABB63AFF350E4A5F4807731E35966CB6D2C3FF46EB78F19305E675D1C661BACDCED57812AC53DB1C4EDBD0226CA0FD2A68C27BF2D6D2A8F786C6753060CF32A54BB1BAF2F428D17FA66CCDA85776DA16FBAF037E3F5B3DC57B50FE5F8279394DCCB63A074DC9B88A357FBA31BE52C9693D856A146D8E45F128683112718CD7FF7673EC17C492F086E10254B9CB03CC9C31E1F9F8CA5173B87F37AC64912CFD71C5D4D4F68EA63B6837C2DFA8462F711C56AF6C4162F4CD6A04A60FA9A7AF8796AFF2B6B7596C538F85F59F191759D7CA6E4F7142A1EE2145BFF56B34187C9B86F3E761DE8FB88EE5ABDFEED4BDEF4C8BA8B61C69C59C7922E3719E1FAAB895ED2E44DB79066E3B7146F7742D51E276851A509B1F95B84056183BC4328A4FC3640CFDFF5154DFBD6602B44CD7B82A1F00651A1E9BDC02658C6B7021E7CB2ECAD40BFCEEADF0E6C229AF1DD00A1FDC1E45703DD97A1A2E51EB71ACDC968174B52A6E7D6ACEBAD5230F7BD3729C9D95B4D743501BB07DC1649D61B58C61BCB4F1E6C77D4A41F0F86BD4FD37EF59CE34349335E2780EC37BB789709C50D17457FAA3CE203C87CD364F2EC3F5B78D7B6668AE61E78CA65BF9CE003333691DFB5FFCCDF5D1B9B29CC7BE0C6D62BBFF7C06C6D5FFBE79E2DADF316BAF76C5D35F1C8702BA38B05B765E3E6817338E12F423082DCA3CC1F51EAD3BF9A52575B18AE49CC4CCD7967326365E2287C158A66B6FDFA2A36FCC6CE0A9A66B6866CCD26DE62FD6FE42D689A791B7220F79147ACCD42D4E576B7AC634D69516F296FB8D6939634F5369FB5F18AFD2DA5090FA294DAEC31DC11BF9DACE0415432E4D4E99105AC5EF7C2DE59F92546D8BF13B25A43F0DF65A4D8ADED9A25CD355D86C5E62D49549048119A1BCC90075BEA79CCC812B90CAA798C397B059EC5EDF84DC7027BD7F42E6551CAA0CB3858F8B5801777029AF867A9CE7599277751F68326437401C4243C367F477F4A89EF95725F6962420608EE5D88882E1F4BC623BBAB9712E936A41D8184FA4AA7E80107910F60C91D9DA327BC896C607E1FF10AB92FEB08A009A47D20EA6A9F5C10B48A5190088C757BF8041BF682E71FFE0FF5F4B47190540000, N'6.1.3-40302')
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201701120954104_add-tenant', N'WebApi2StarterKit.Models.ApplicationDbContext', 0x1F8B0800000000000400E55CDD6EE33616BE5F60DF41D0D5EE22B5136767301BD82D5227D90D3AF9C138D3F66E404BB4238C44A912952658EC93ED451FA9AFB0A4244AE29F44D9B26C7751A0184BE4770E0F3F92E750E7E4F7FFFE36FDEE35F0AD1718275E8866F6D9E8D4B6207242D743EB999DE2D5371FECEFBEFDF39FA6D76EF06AFDC8DA9DD376A4274A66F633C6D1C5789C38CF3000C928F09C384CC2151E396130066E389E9C9EFE637C76368604C226589635FD9422EC0530FB417ECE43E4C008A7C0BF0B5DE827C573F26691A15AF7208049041C38B37F82CBCBC89B2C3088318C7FF0F028EF635B97BE07883E0BE8AF6C0B2014628089B6179F13B8C07188D68B883C00FED35B0449BB15F013588CE2A26A6E3AA0D3091DD0B8EAC8A09C34C161D011F0ECBCB0D058ECBE919DEDD282C486D7C4D6F88D8E3AB3E3CCBE7561F6E853E8130388022FE67E4C1BCFECBB52C46512DD433C621D4739E44D4CE07E0DE3AFA33AE28965DCEFA464D464744AFF3BB1E6A98FD318CE104C710CFC13EB315DFA9EF3037C7B0ABF42343B3F5BAECE3FBC7B0FDCF3F77F87E7EFEA23256325EDB807E4D1631C463026BAC155397EDB1AF3FDC662C7B25BAD4F6E15C225B2386CEB0EBC7E84688D9FC9B2997CB0AD1BEF15BAEC4941AECFC8236B8974C2714A7EDEA7BE0F963E2CDF8F1B65D2FF37489DBC7BDF8BD47BF0E2ADB3A917E49385139375F509FAD9DBE4D98BF2E5C5CDF797A2D94D1C06F437CFAFFCED974598C60E1D4CA86DF204E235C4BC76D371455E234A53A8FE69CD500F9FDA545399DECAA674409BAC042662E8D5C0F4DDAD5C63C63D4104106EE299EEA41AE55D4F2CA941459A3353D2203298E1F7C05B84CF270A4BD6CCB0C0610CFF09118C0186EE23C06488A85AA85BEE7DE49F4673BDD1D45E46113171360C4AF68DE658C038E6C91E6E89E70B43A25973A7EB00787E0FC7A48114E2A7AEBC3880A582DF87645302A8F3401F41929053C2FD17489E7B66B92C6C019D34260C27D40BA29D4B7B7C0E11BC4F83255D38C3C9EA6D6A9E7E0D6F804336AF6B447B6D8DF73174BE8629BE46EE15D9083F638701D29F4F5E600ED08B3A978E0393E4869019BAF330A52758F396DE0C47F7B67DBBA9731F7881DA4F1576E12FAC69E5ABAA5B48FEAAA699CA676D52F563B8F69099AAACA95ED5BC45ABAA45B3AEAA5230334D8B967A45B306AD7AE6ADBAAAC9DC30033D5953BDA2798B564D8B66BD052C1999FA8F5832D8C30F590EDD13DD57BC934D1F15BAF3633493F423F0D3BD79DC75DA66FB55FFAB21833DFCD590A9491EBF782E75A00CE278D698C01BB5575F11B4AF3941B3A1970337CCA1850FB307E896CB6592848E97AD02C50D6E71FFC6EB4FDC4DABFD322E1F8D78A147064688EED1338F3C2163B345523DA02BE8430CAD4B27BFE19E83C401AE6C463220B78362EC445528565DECF1CAFD4D9249980E63DA09D0782D212BD543585E161E72BC08F8AD56127A1A1E6174ECA50CF1CD158C20A2025B2D61225C7D8F471528E50893D266A1E9B8C6B866226A1C6CDD9CB779DBD5BC4B77308370B2C5CDD7F0B2F0DF7642CC668B0D40CE66939828A0BD93DE07418BB0CA9400628C75680415823B0D410B976A1082F216DB034179931C1D41F368DA74FE85D0FAD0E8C9C7F4C31FEB8DE6DA0337397B1C1D358B0B14D3C9176F538CC9294F7EAB1005C5D8750F8F7D3A1A9DED865BBC267B20176F6F1305AAEF2D03F02B8F6D481F4C7AC058E6D8D592BE84AFAA8FAA648045FC9F14A19448100ABE8098BFBDACE229659C23B18C071137A926C06A236B01CD6DAE8262846D0128D22DA4EED2A2EA303A762FDE38BCC2CDED00CBEEB01B610BE74480AD9148C6AEA79DD41AEA935344761B85C7E5C84A3A49ABC4289AADE12818259EAEFCC00D8CA2FBC6211BC62458EB12AED506564C4683815A422B8D91D8607AB712A366BB955411439798612B2B09FEBDC64A6C30BD5BA9E068BB91145E6B07BF752B13F13EE6C08B8DEDD9ED1652394F5DDCA7AD6C24784935ACF23832360DBBA52C4FF2F2DD749CA7EB160FA6634D5EEFF40E449187D6B53CDFE289B5C8937CE7DF2CBAE7BD0639C6D84914E9AFA5B6A5241CC6600D85B74434D1F4C68B137C053058027A473B7703A999D26FD19C8C4C64DD3591E78E1D91AC35FD77DE439B64C47933B2C35720DD907106D46DCC3E84291688BABB45B3AF810F62C5B7B779E8A701D27BB1FADE79B240BD7FFE4446988E05FD251755B29914A8F21360343DF2AED1EB54957EE2E6D3A587D0199D459175B3EB224B3D0ABB68AEA3E82E9FF7367D6C3FEB65D2D47BB6C154E93AFE9FAE299D13BEC19488514EF7B96945D8CD2455B1761D431F81EB918A84C73A4CF1A823462D674E02ABBD3347E5D31AEB98FC1B73442177B10E29BCEAA0653D439153B2FE62233C8D45D52D3A7047CA49E43824BD3547566427D6A115AF37C056E82CBE3347552430D68115AFCDB1AB6C46F1A43CB00D551122F7EEA5E4D73DDBB9291A8CDDECB0FD7839B5B4AB3A50ED7147AC22B14A022B9E1F24A7B4771E5B722ABFEBDB8E531A0CFD2EC4A52DF19B5063AE951E93CB45E236FAA65C2C3D5E37E6EE941F52742F3629A59751BE10CD4F8BC8BABD94570AB5F326B6C5CC480EF9B704C360441B8C16BFF873DF83744B670DEE00F25630C179FE9D3D393D9B0875C08753933B4E12D757DC4CE80A73F9391B209516BD80D87906B19CD8B645DD6A052A7DD3B9452E7C9DD9FFCE7A5D643757F45FD9E313EB36F98CBC5F52F2E2294EA1F51FB9A6A09F3ABEE6A8FA40AB2ECDAD7AFBF397BCEB89F510931573619D0AB6DC6486F95ACC4EDAE45DB7D0A66B85E6E0EBC8A33B546BD2790F6BEA2F0178FD6B1DA9C79AC7E3DD7DC422424F59A52B1393F5E3A9D9645C5936578BA81C91B0736D5E7AB8F4702F65871DC824032A4B0BB74254940FF685D78B0975E5819B60694B035DF21367A581DD06AB2E15DC44356D9960B69AB62C12343F2F58CF3DFA048A10F6680F91C37222A402A7AD16BA5CC4B48B63B22510FD43D6F8F476322B4A787AC3DE27B5775EB77328A53A5592DB7E2B74862CCA69F860FB87AAC53980EC7145B2E1FE2B6E86E69AEEDAFDC073C3BBD5D51C18D98A14D4FD57CF0C4D36DD7DFC8193AD538DCC81716D5FE7E79E99667C841E14D15A2A5E58F6E7665527BD30B6277668339D765DB5722C752A725AA83899EA32887C4557F181D289CFBF7BCD6C771992B9CFE38CFCCF53A8F39675C2AA2D442BB06AA217AA4F98160533B64BE2D80B95105DCAB1082E315F9222B5681E533743163E66A3258B36CD6235350C4DB20B97A35176D1A659B6A632601FD535CADC7C55C954CBD1D994117B4CD534DC485A8AB7DAC2A4C6F49B632A9EE9C528DCEAD1E48F1C4FAD4C2F26D9C7D2E9B136863F67EA29D61DAA60BA18B29FFA17391386F825B53F7D4F9CA3C45B5710F40FE123E8701E49D9E616AD42E61A091AB126C29DE81DC4C025EECA658CBD157030794DBFEA647FBB28BB29A7DF1697D0BD450F298E524C860C83A5CF5D315307AB497E56E4C3EB3C7D88E8AFA48F2110353DFA35EC017D9F7ABE5BEA7DA3B885D54050CFADF88642E712D36F29EBB712E93E44864085F94A87F30906914FC09207B4002F7013DD08F53EC23570DEAA3B771D48FB44F0669F5E79601D83202930AAFEE427E1B01BBC7EFB3FF3720E0A01620000, N'6.1.3-40302')
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201702070720377_Update_UserName_UniqueIndex', N'WebApi2StarterKit.Models.ApplicationDbContext', 0x1F8B0800000000000400E55CDD6EE33616BE5F60DF41D0D5EE22B5136767301BD82D5227D90D3AF9C138D3F66E404BB4238C44A912952658EC93ED451FA9AFB0A4444AE29F7E6C59B6BB28508CA5C38F87871FC973A873F2FB7F7F9B7EF71AF8D60B8C132F4433FB6C746A5B1039A1EBA1F5CC4EF1EA9B0FF677DFFEF94FD36B3778B57EE472E7548EB444C9CC7EC638BA188F13E719062019059E138749B8C223270CC6C00DC793D3D37F8CCFCEC69040D804CBB2A69F5284BD00663FC8CF79881C18E114F877A10BFD843D276F1619AA750F029844C08133FB27B8BC8CBCC9028318C3F8070F8FF236B675E97B80E8B380FECAB60042210698687BF139810B1C8768BD88C803E03FBD4590C8AD809F40368A8B52BCED804E277440E3B2218772D204874147C0B37366A1B1DC7C233BDB8505890DAF89ADF11B1D7566C7997DEBC2ECD1A7D02706903BBC98FB31159ED97745179749740FF188371CE590373181FB358CBF8EAA882756EB762705A326A353FADF89354F7D9CC67086608A63E09F588FE9D2F79C1FE0DB53F815A2D9F9D97275FEE1DD7BE09EBFFF3B3C7F571D29192B91131E90478F7118C198E80657C5F86D6B2CB61BCB0D8B669536B9550897C8E2B0AD3BF0FA11A2357E26CB66F2C1B66EBC57E8F2278C5C9F9147D6126984E394FCBC4F7D1F2C7D58BC1FD7F649FF5FD3EBE4DDFB5E7ABD072FDE3A9B7AA97FB27062B2AE3E413F7B9B3C7B51BEBC84F9FEC2C46EE230A0BF457EE56FBF2CC23476E86042A3C81388D7108BDA4DC725795B519A42F54F6B8E7AF8D4A69AAAF4D68AD2016DB212781743AF06AEEF6EFB6DCDB8278800C2753C339D54A3BCE989A50894A4396B4B1A440633FC1E788BF0F94463C98A1916388CE13F218231C0D07D04980C11950B75CBBD8FFCB3D55C6F34B59751444C9C0D83927DA33996308E79B2875BE2F9C268A6593DCA75003CBF8773B3452FC4715D7971000B8DBF0FC92E0550679D1F41929063C3FD17489E7BA6BDDAD9023A694C284FB818443BEFEDF13944F03E0D9674250DD7576F53F3F46B78031CB29B5D23DA6A6BBC8FA1F3354CF13572AFC8CEF8193B1C90FE7CF282F600BDA873E93830496E0899A13B0F537AA46DB3F8E866B76FBF75EE032FD03BAED2B6FC858B96CEAB5E4271600D623A27B64ED58FE1DA43ED54E5A26655738946559958575529583B4D99A459D14CA051CF5CAAAB9ADC2F6BA12717352B9A4B346ACAC47A8B603232F51FC264B0871FC31CBA6BBAAF00289B3EDAE9CE8FD1ACA71F819FEECD05AFD236DBAFFA5F0D19ECE1AF864C4DF2F8C573A903D522B0E7C204BE95BCFECEA079CD499A0DBD1C84610EDDF9307B8069B95C2649E878D92AD05CE9B20B39517FE26E5ACDB773F968E41B3E323042748F9E79E409199B2D93EA015D411F62685D3AF995F71C240E7055339201B91D14E327AA46B1F2A64F54EE6F4A9F84E930A68D008DD712B2523D84D565E121C78B80DF6825A965CB238C8EBDE8437E7305238868878D9668D3B9FE628F2A50F4234D4A9385A6E30AE3EA896870B04D73DEE46D97F3AE5CCA0CC2C90637DFC04BE6BFED8498F5161B809CF52669A380F1927A1F046561555B02C831D6A111540AEE0C04652ED52004152DB607828A26393A82E6D174DBF99742EB43A3A718D30F7FACD79A6B0FDC14EC7174D46417286D275FBE4D694D4E75F21B3BD1508C5FF7EC90F8BD70521CC11E4829CE531B05CA0F3703F0328F89481B4C5AC058E5E6D592BE84AFBAAFB36480ECDE206121984C2C0ABE8058BCF52CE3306D7CA4B053049137B73AC072036C00CD6DAE83E2446F0060791B4A73653176181DBF4FAF1D1E738F3BC0F2BBEF5A58E6D448B01512A9D8D5FC958AA039CB456677ABB0BA185941276595B48A822B381A46C99B9338F01646317D1B510DD326C8EB12E65506C626A3C6400D2199C1487C30BD5B8953B3D94ABA48A34BACB19595A4B8C060253E98DEADC438DA6C248DB7DBC1DFDDCA44A26F3AF062E37B76B385744E5717B76B2B1B49DE5505AB388E5A9B86DF6E162779F16E3ACEF37ED983E9D890203CBD0351E4A1752561983DB11679B6F0FC9B45F704DA20C7183B021165BFA3E80987315843E92DE99A687AE3C509BE02182C01BDDB9DBB8122A6F55B0C2723EFB2EA9AA873C78F482E4DFF9DB730662B09DE8CEAF031A41B32CE80BA8DD90734CD02D137B7681A37F041ACF966370FFD3440662FD6DC3A4F32A8B6CF9FA808D3B1A4BFE2A22A3653FC7C71025A4D8FBA6BF43A55859FB8F97499214C46E7D167D5ECA688D48CC22FA8AB28A64BEBBD4D1FDFCF7A9934FD9EDD62AA4C0DFF4FD794C909DF604AE428A7FBDC3422EC6692CA58BB8A618EC0CD482C51B20AC31E75C4A8E4DA29609577ED51C574C82AA6F8A63DA294F35885945E75D0B29AD92828597DB1119EC1A27A890EDC517219050E296FDB236BB21AABD09AD71B606B7496DFB547D5243E568135AFDB63975990F24979601BAA2644EEDD4BC9AF7BB673530C18BBD961FBF1722AE95A55A0CAE38E582C214B0163CF0F9253C63B8F2D3995DFF56DC7290386791712D29DC44DA83647CB8C29E430091B7D5D0E9719AF1B7377CA0F25BA97458ADE8B285F8AE6A72CB26EAE095642ED5CC4B6B819C921FF9660188CA8C068F18B3FF73D48B7742E700790B78209CEF3F6ECC9E9D9442A283E9CE2DE7192B8BEE666C254E12BCED90029B8E805C4CE3388D584B82D0A604B50E59BCE2D72E1EBCCFE77D6EA22BBB9A2FFCA1E9F58B7C967E4FD9292174F710AADFFA8B508FD1404D647D5075ABED9DEAAB73F7FC99B9E580F31593117D6A964CB4D66582CEAECA44DDE740B6DBA967A0EBE8E3CBA433526ABF7B0A6FE1280D7BF56917A2C9E3CDEDD47AE46F4B4E5BE1231B98FCF361F46CE896E1BDAA6AC513B486933DBBC8A71E9E15E2A183BF04B05D456296E85A8A944EC0BAF17139A2A0D37C1325619BAE427CEAA0CBB0D565F75B8896AC68AC36C816D596FD8FE08D1AFD4B3FD380C9AF8F6684F98C3F23094AAA9AD96BC5A19B58B33B4214AFD43160EF5766C6BEA827AC3DE27B5775E0C7428F53F6506DC7ECB7E86ACF4A9F99AFB872AF0398094744D26E2FECB7886E69AE94EFEC013CEBB15EB1C18D9587EEAFE4B7286269BE9B2FEC0C9D6A9F0E6C0B8B6AFF373CF4C6B7D841E14D11ACA68786AE8B0A52CBD30BD275619D3A7765D0A732CC52F6AAEA93C99FADA8A7C2728E30AADF39F7F4C9BD9EE3224739FC727F9DFCAD027439B3A2BB71E6387A588B9537316B6DC315F254A77FC85AE13531EB30CAE305FE94591A81F53374332DFB4D6924CA6BE5B4361445DDFCC55A9ED9BC9D4F76D2837D847C98E36E15F5787D570E4D6A5D91E53898E3092868AB0A6F0AA36A7E7982A727A318AB07A0C4929C75380D38B49F6B1747A2CB811CF996ADE7687D29A2E86ECA7A8464DAF217E49E50FF313E728F1D62504FD33FD083A824752C8DCA255C85D2349232E22DDA5DE410C5CE2AE5CC6D85B010793D7F4BB50F68794B21B76FA757209DD5BF490E228C564C83058FAC2D53475B0EAFACF2A87449DA70F11FD95F43104A2A647BFA73DA0EF53CF770BBD6F34B7B70608EAB9B16F2F742E31FD06B37E2B90EE43D4128899AF70389F6010F9042C79400BF00237D18D50EF235C03E7ADBCAB3781344F8468F6E99507D63108128651B6273F0987DDE0F5DBFF0197B581C29F620000, N'6.1.3-40302')
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201702220227567_remove_required_Tenant', N'WebApi2StarterKit.Models.ApplicationDbContext', 0x1F8B0800000000000400E55CDD6EE3B815BE2FD0771074D516593B713A836960EF22EB4CDA60273F1867B6BD1BD012ED0823515A89CA2628FA64BDE823F5154A4AA424FE49942DFF648B051663E9F0E3E1E147F21CEA9CFCF7DFFF99FEF01285CE334CB3204633F76C74EA3A1079B11FA0F5CCCDF1EABB0FEE0FDFFFFE77D38F7EF4E2FCCCE5CEA91C6989B299FB847172311E67DE138C40368A022F8DB37885475E1C8D811F8F27A7A77F199F9D8D2181700996E34C3FE70807112C7E909FF3187930C139086F631F86197B4EDE2C0A54E70E44304B800767EEDFE1F23209260B0C520CD39F023C2ADBB8CE651800A2CF02862BD70108C51860A2EDC5970C2E701AA3F522210F40F8F89A4022B7026106D9282E6A71DB019D4EE880C675430EE5E5198EA39E8067E7CC4263B9F94676762B0B121B7E24B6C6AF74D4851D67EE8D0F8B479FE3901840EEF0621EA65478E6DE565D5C66C91DC423DE7054425EA704EED738FD366A229E38D6ED4E2A464D46A7F4BF13679E87384FE10CC11CA7203C711EF26518783FC1D7C7F81B44B3F3B3E5EAFCC3BBF7C03F7FFF6778FEAE3952325622273C208F1ED2388129D10DAEAAF1BBCE586C37961B56CD1A6D4AAB102E91C5E13AB7E0E513446BFC4496CDE483EB5C072FD0E74F18B9BEA080AC25D208A739F9799787215886B07A3F6EED93FEBFA5D7C9BBF783F47A079E837531F552FF64E1A4645D7D8661F1367B0A92727909F3FD95895DA771447F8BFC2ADF7E5DC479EAD1C1C446914790AE2116B59B8E6BF25A519A420D4F6B8E7AFCD4A69AAAF4D68AD2016DB2127817FB5E0D5CDFDDF66BCDB8478800C26D3C339D54A3B2E989A308D4A439B3250D2283D9FF1E7883F0F94463C9861916384EE15F218229C0D07F00980C11D50B75CBBD8FFCD36AAE379ADACB2421262E8641C9BED11C4B186F79B2F7B7C4CB85A1D0ACBDD1C70804E100C7A4452FC44F5D0569042B057F8CC9A60450EF813E802C23A784FF37903D0DCC72B5B305F4F294309C502F4A76DEDBC3538CE05D1E2DE9C2D95F5F834DCDE3AFF135F0C8E6F511D1565BE37D8ABD6F718E3F22FF8A6C845FB0C701E9CFC720B20718449D4BCF8359764DC80CFD799CD313AC7D4B6F87A37BDBA1DDD479088248EFA74ABBF0572E5AFBAA7A09C55F3588E97CD636553FC5EB00D9A9CA45CDAA96129DAA32B1BEAA52303B4D99A459D142A053CF52AAAF9ADC0DB3D0938B9A152D253A35656283052C0599868F580AD8E30F598EDD133D54BC534C1FED74E7C768D1D3CF20CC0FE67137695BEC57C3AF8602F6F85743A12679FC1CF8D481B288E3B93081B792D75F1174AF3949B37D2F076198FBEE7C3F7B8069B95C6659EC05C52AD0DCE0B2FB37517FE26E3ADD9771E568E40B3D323042F4809E79E409199B2B93EA1E5DC11062E85C7AE50DF71C641EF055339201F93D14E327AA46B1FA624F54EE4F4A9F84E930A58D008DD732B2520384D56511202F4840D86925A9A5E51146C75EF521BFB9820944B4C34E4BD874AEBFC7A30A54FD4893D265A1E9B8C1B876221A1C6CD39C7779DBF5BC2B77307BE164879B6FE025F3DF7642CC768BED819CED26B151C078277D0882B2B0CA9600728C756C0495823B0341994BB517828A163B00414593BC398296D1B4EDFC4BA1F5B1D1538CE9F77FACB79AEB00DC14ECF1E6A8C92E506C275FBE4DB126A73AF99D9D6828C6AF7B44ECD3D1E86C37DC12353900B9447BDB28507F6FD903BFCAD886B4C1A4054C558E5D2DE94BF8A2FBA84A06C8E2FF8C8552324128F80262F1F6B28EA7B4718EC2321144DEA4DA00EB8DAC03B4B4B90E8A13B60380A55B28CD9545D56374FC5EBC7578CCCDED01CBEFB05B61997322C13648A46237D34E1A82E6E41499DD56E17135B28A4ECA2AB18A661B381A46C9A7AB38700BA398BE71A886B109D6FA846B8D81B1C968315047686530121FCCE056E2D4ECB6922E62E813336C6525C9BF3758890F66702B318E761B49E3B5F6F05BB73291E863EE79B1F13DBBDB423AE7A98FFBB4958D242FA981551D47D6A6E1B794D5495EBD9B8ECB745DF6603A36E4F54E6F41920468DDC8F3654F9C4599E43BFF6ED13FEF352A31C65EA6497FADB4AD7AC2710AD6507A4BBA269A5E076986AF00064B40EF68E77EA48869FD16C3C9C8BB6CBA26EADCF123924BD37F972D8C49468237A33A7C0CE99A8C33A26E63F1214CB340F4CD1D9A7D0D42906ABEBDCDE3308F90D98B35B72E93059AEDCB272AC2742CE9AFB8A88ACD9440559C00ABE951778D41A7AAF213379F2E3384C9E83C8A6C9ADD14599A51F8457313C574F97CB0E9E3FBD92093A6DFB32DA6CAD4F0FF744D999CF00DA6448E72FACF4D27C26E26A98EB59B18E608DC8CC4121E9B30EC514F8C46CE9C02D678678F2AA6353631C537F68852EE6213527AD543CB6686A2A064F3C54678068BEA257A7047C9491438A4BCB547D6642736A135AF37C0D6E82CBFB347D52430368135AFEDB1EB6C46F9A43CB20D5513220FEEA594D73DDBB929068CDDECB0C378398DB4AB2650E3714F2C9658A580B1E747C929E39DC7969C2AEFFAB6E39401C3BC0B09694BE226D49A6B65C6147291848DBE2D17CB8CD78FB93BE58712DDCB2255EF55942F45F35316597797F22AA17629E23ADC8CE4907FCD308C465460B4F8259C8701A45B3A17B8052858C10C97F977EEE4F46C22D5011F4F4DEE38CBFC507333612ACC15E76C0FA9B4E819A4DE1348D5C4B62DEA566B50E59BCE0DF2E1CBCCFD67D1EAA2B8B9A2FF2A1E9F3837D91714FC9293178F690E9D7FA93505C3D4F1B547D5475A75696FD59B7F7C2D9B9E38F729593117CEA964CB4D6658ACC5ECA54DD9740B6DFA5668EE7D1D057487EA4C3A1F604DFD21022F7F6C220D58F3F876771FB98830D056E94AC4E43E3EDB7C183927BA6DA8CDDCAA364275A2768CD25EB67931E232C0831422F6A0970AA82D36DC0A5153503814DE202634150C6E82652C16F4C94F5C140BF61BACBE787013D58C8583C5FADAB26CD0FE04D12FD4B3C3F80B9AF0F6CD1E30C7E56028C54F5B2D79B5C0691747684790FA9BACFF19ECD4D694F70C867D486AEFBCA6E758CA78EA04B8C356EFECB360A7E563EE6FAA4EE70832CB35898887AFC6D937D74C57F2479E37DEAFE6E6C8C8C6D2530F5F59B36FB299EEEA8F9C6CBDEA678E8C6B873A3F0FCC34EB23F4A888D6510DC3334337AB481984B103B1C39805B5EB8A96B752C3A2A68CCA93A92F912857741D1F689DF8F29BD8CCF5973199FB32CE28FF74853EA7D9D459BD85183BAC45CC9D9A93A9E58E39DB95EEF80B5D27A67464195C61BED28B22D13EA67E86643E66AB25994C7BB786FA86B6BE99CBD1DA379369EFDB50357088CA1B6DDEBEAE9CAAE3E86CCB967D4B9536C2483A0ABBBAC2A4D6D49CB7545833885184D563C82D793B75348398E4104B67C0BA19F19C69A65FF7A890E963C8616A63D42C19E29734FE2C3E718EB2605D43D03F928FA027782495CC0D5AC5DC359234E222D29DE82DC4C027EECA658A8315F030794DBFEF147FD7A8B829A75F1997D0BF41F7394E724C860CA365285C315307ABADFFA20048D4797A9FD05FD91043206A06F4BBD83DFA310F42BFD2FB5A730B6B80A09E1BFB8642E712D36F29EBD70AE92E469640CC7C95C3F908A3242460D93D5A8067B8896E847A9FE01A78AFF59DBB09A47B2244B34FAF02B04E4194318CBA3DF94938EC472FDFFF0F7BD8681F1D620000, N'6.1.3-40302')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [TenantId]) VALUES (N'2dcd5ba0-2454-44bc-8d63-e894871c22f7', N'IzendaAdmin@system.com', 0, N'ALgR7duL/gW+0PiDh6RYTrDsV8neLlnGr2swUrf8D706xvEUvBEcN6JzbcMh8h9y4Q==', N'582f98f4-7d38-4fc8-ae96-230b4c7a157b', NULL, 0, 0, NULL, 0, 0, N'IzendaAdmin@system.com', NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [TenantId]) VALUES (N'6dc0b560-15b8-4209-add1-109560ae2dfc', N'employee@kms.com', 0, N'AFax6cs39us+Sxxnotz+J1hrKiqBZSkPIa59dsb1jwKvfblfUne7OgVbnqUQOtKhBA==', N'cca95766-51b0-4d7f-996b-8fa422c7c94a', NULL, 0, 0, NULL, 0, 0, N'employee@kms.com', 7)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [TenantId]) VALUES (N'b68b8c3a-00ee-4508-99f0-d826fd4afdc3', N'employee@deldg.com', 0, N'AAlnA9tghgRPtGlI8H6k+6O4svEhz8nh4Fvz7emHPjBjKPi1GirUdlQLATjVknOhWw==', N'354ca258-0b0c-4a9b-abde-659f9d2cb489', NULL, 0, 0, NULL, 0, 0, N'employee@deldg.com', 6)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [TenantId]) VALUES (N'ce13119f-1dde-4b4b-822b-39fb99f8b996', N'manager@deldg.com', 0, N'AMHZpTKnwHMVYFkePUiFIVl5e1MZhE7UZbgwudKrUF75/S3W2NW9/Lmr16Ko0LSU+A==', N'adc40b6b-f0d6-469b-95a2-8c947deff6d9', NULL, 0, 0, NULL, 0, 0, N'manager@deldg.com', 6)
GO
SET IDENTITY_INSERT [dbo].[Tenants] ON 

GO
INSERT [dbo].[Tenants] ([Id], [Name]) VALUES (1, N'System')
GO
INSERT [dbo].[Tenants] ([Id], [Name]) VALUES (6, N'DELDG')
GO
INSERT [dbo].[Tenants] ([Id], [Name]) VALUES (7, N'KMS')
GO
INSERT [dbo].[Tenants] ([Id], [Name]) VALUES (12, N'NLE')
GO
SET IDENTITY_INSERT [dbo].[Tenants] OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2/22/2017 3:51:49 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2/22/2017 3:51:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2/22/2017 3:51:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 2/22/2017 3:51:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2/22/2017 3:51:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 2/22/2017 3:51:49 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC,
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUsers_dbo.Tenants_TenantId] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_dbo.AspNetUsers_dbo.Tenants_TenantId]
GO
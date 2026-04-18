.class public Lcom/codemao/nemo/bean/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private age:I

.field private author_level:I

.field private avatar_url:Ljava/lang/String;

.field private birthday:J

.field private consume_level:I

.field private description:Ljava/lang/String;

.field private doing:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private gold:I

.field private has_password:Z

.field private head_frame_url:Ljava/lang/String;

.field private id:J

.field private isAttentionUser:I

.field private is_official_certification:I

.field private level:I

.field private nickname:Ljava/lang/String;

.field private oauths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/Oauths;",
            ">;"
        }
    .end annotation
.end field

.field private phone_number:Ljava/lang/String;

.field private qq:Ljava/lang/String;

.field private real_name:Ljava/lang/String;

.field private sex:Ljava/lang/String;

.field private small_head_frame_url:Ljava/lang/String;

.field private telephone:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private voice_forbidden:Z

.field private wechat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/codemao/nemo/bean/UserInfo;->age:I

    return v0
.end method

.method public getAuthor_level()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/codemao/nemo/bean/UserInfo;->author_level:I

    return v0
.end method

.method public getAvatar_url()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()J
    .registers 3

    .line 124
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserInfo;->birthday:J

    return-wide v0
.end method

.method public getConsume_level()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/codemao/nemo/bean/UserInfo;->consume_level:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDoing()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->doing:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGold()I
    .registers 2

    .line 156
    iget v0, p0, Lcom/codemao/nemo/bean/UserInfo;->gold:I

    return v0
.end method

.method public getHead_frame_url()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 172
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserInfo;->id:J

    return-wide v0
.end method

.method public getIsAttentionUser()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/codemao/nemo/bean/UserInfo;->isAttentionUser:I

    return v0
.end method

.method public getIs_official_certification()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/codemao/nemo/bean/UserInfo;->is_official_certification:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    .line 180
    iget v0, p0, Lcom/codemao/nemo/bean/UserInfo;->level:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOauths()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/Oauths;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->oauths:Ljava/util/List;

    return-object v0
.end method

.method public getPhone_number()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getReal_name()Ljava/lang/String;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->real_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getSmall_head_frame_url()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->small_head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephone()Ljava/lang/String;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWechat()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserInfo;->wechat:Ljava/lang/String;

    return-object v0
.end method

.method public isHas_password()Z
    .registers 2

    .line 164
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/UserInfo;->has_password:Z

    return v0
.end method

.method public isVoice_forbidden()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/UserInfo;->voice_forbidden:Z

    return v0
.end method

.method public setAge(I)V
    .registers 2

    .line 112
    iput p1, p0, Lcom/codemao/nemo/bean/UserInfo;->age:I

    return-void
.end method

.method public setAuthor_level(I)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/codemao/nemo/bean/UserInfo;->author_level:I

    return-void
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(J)V
    .registers 3

    .line 128
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserInfo;->birthday:J

    return-void
.end method

.method public setConsume_level(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/codemao/nemo/bean/UserInfo;->consume_level:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setDoing(Ljava/lang/String;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->doing:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setGold(I)V
    .registers 2

    .line 160
    iput p1, p0, Lcom/codemao/nemo/bean/UserInfo;->gold:I

    return-void
.end method

.method public setHas_password(Z)V
    .registers 2

    .line 168
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/UserInfo;->has_password:Z

    return-void
.end method

.method public setHead_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 176
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserInfo;->id:J

    return-void
.end method

.method public setIsAttentionUser(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/codemao/nemo/bean/UserInfo;->isAttentionUser:I

    return-void
.end method

.method public setIs_official_certification(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/codemao/nemo/bean/UserInfo;->is_official_certification:I

    return-void
.end method

.method public setLevel(I)V
    .registers 2

    .line 184
    iput p1, p0, Lcom/codemao/nemo/bean/UserInfo;->level:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setOauths(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/Oauths;",
            ">;)V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->oauths:Ljava/util/List;

    return-void
.end method

.method public setPhone_number(Ljava/lang/String;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->phone_number:Ljava/lang/String;

    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->qq:Ljava/lang/String;

    return-void
.end method

.method public setReal_name(Ljava/lang/String;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->real_name:Ljava/lang/String;

    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->sex:Ljava/lang/String;

    return-void
.end method

.method public setSmall_head_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->small_head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->telephone:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->username:Ljava/lang/String;

    return-void
.end method

.method public setVoice_forbidden(Z)V
    .registers 2

    .line 104
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/UserInfo;->voice_forbidden:Z

    return-void
.end method

.method public setWechat(Ljava/lang/String;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserInfo;->wechat:Ljava/lang/String;

    return-void
.end method

.class public Lcom/codemao/nemo/bean/LocalUserInfo;
.super Ljava/lang/Object;
.source "LocalUserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private authorLevel:I

.field private author_level_upgrade_hint:I

.field private avatar_url:Ljava/lang/String;

.field private birthday:J

.field private consumeLevel:I

.field private consume_level_upgrade_hint:I

.field private cover_url:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private fullname:Ljava/lang/String;

.field private hasPhone:Z

.field private head_frame_url:Ljava/lang/String;

.field private id:J

.field private isBBKLogin:Z

.field private is_answer_friendly_protocol:I

.field private is_official_certification:I

.field private n_likes:J

.field private n_re_create:J

.field private n_views:J

.field private nickname:Ljava/lang/String;

.field private register_mills:J

.field private sex:I

.field private signature_img_link:Ljava/lang/String;

.field private small_head_frame_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->n_likes:J

    .line 20
    iput-wide v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->n_re_create:J

    .line 21
    iput-wide v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->n_views:J

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->authorLevel:I

    .line 23
    iput v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->consumeLevel:I

    .line 28
    iput v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->consume_level_upgrade_hint:I

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->hasPhone:Z

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->isBBKLogin:Z

    return-void
.end method


# virtual methods
.method public clone(Lcn/codemao/android/account/bean/UserInfoVO;)V
    .registers 4

    .line 223
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->avatar_url:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->nickname:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getFullname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->fullname:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->id:J

    .line 227
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getSex()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->sex:I

    .line 228
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->description:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getBirthday()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->birthday:J

    return-void
.end method

.method public getAuthorLevel()I
    .registers 2

    .line 191
    iget v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->authorLevel:I

    return v0
.end method

.method public getAuthor_level_upgrade_hint()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->author_level_upgrade_hint:I

    return v0
.end method

.method public getAvatar_url()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()J
    .registers 3

    .line 149
    iget-wide v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->birthday:J

    return-wide v0
.end method

.method public getConsumeLevel()I
    .registers 2

    .line 199
    iget v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->consumeLevel:I

    return v0
.end method

.method public getConsume_level_upgrade_hint()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->consume_level_upgrade_hint:I

    return v0
.end method

.method public getCover_url()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFullname()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->fullname:Ljava/lang/String;

    return-object v0
.end method

.method public getHead_frame_url()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->id:J

    return-wide v0
.end method

.method public getIs_answer_friendly_protocol()I
    .registers 2

    .line 215
    iget v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->is_answer_friendly_protocol:I

    return v0
.end method

.method public getIs_official_certification()I
    .registers 2

    .line 207
    iget v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->is_official_certification:I

    return v0
.end method

.method public getN_likes()J
    .registers 3

    .line 166
    iget-wide v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->n_likes:J

    return-wide v0
.end method

.method public getN_re_create()J
    .registers 3

    .line 174
    iget-wide v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->n_re_create:J

    return-wide v0
.end method

.method public getN_views()J
    .registers 3

    .line 182
    iget-wide v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->n_views:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRegister_mills()J
    .registers 3

    .line 241
    iget-wide v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->register_mills:J

    return-wide v0
.end method

.method public getSex()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->sex:I

    return v0
.end method

.method public getSignature_img_link()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->signature_img_link:Ljava/lang/String;

    return-object v0
.end method

.method public getSmall_head_frame_url()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->small_head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public isBBKLogin()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->isBBKLogin:Z

    return v0
.end method

.method public isHasPhone()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->hasPhone:Z

    return v0
.end method

.method public setAuthorLevel(I)V
    .registers 2

    .line 195
    iput p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->authorLevel:I

    return-void
.end method

.method public setAuthor_level_upgrade_hint(I)V
    .registers 2

    .line 89
    iput p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->author_level_upgrade_hint:I

    return-void
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setBBKLogin(Z)V
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->isBBKLogin:Z

    return-void
.end method

.method public setBirthday(J)V
    .registers 3

    .line 153
    iput-wide p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->birthday:J

    return-void
.end method

.method public setConsumeLevel(I)V
    .registers 2

    .line 203
    iput p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->consumeLevel:I

    return-void
.end method

.method public setConsume_level_upgrade_hint(I)V
    .registers 2

    .line 97
    iput p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->consume_level_upgrade_hint:I

    return-void
.end method

.method public setCover_url(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->cover_url:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setFullname(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->fullname:Ljava/lang/String;

    return-void
.end method

.method public setHasPhone(Z)V
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->hasPhone:Z

    return-void
.end method

.method public setHead_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 105
    iput-wide p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->id:J

    return-void
.end method

.method public setIs_answer_friendly_protocol(I)V
    .registers 2

    .line 219
    iput p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->is_answer_friendly_protocol:I

    return-void
.end method

.method public setIs_official_certification(I)V
    .registers 2

    .line 211
    iput p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->is_official_certification:I

    return-void
.end method

.method public setN_likes(J)V
    .registers 3

    .line 170
    iput-wide p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->n_likes:J

    return-void
.end method

.method public setN_re_create(J)V
    .registers 3

    .line 178
    iput-wide p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->n_re_create:J

    return-void
.end method

.method public setN_views(J)V
    .registers 3

    .line 186
    iput-wide p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->n_views:J

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setRegister_mills(J)V
    .registers 3

    .line 245
    iput-wide p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->register_mills:J

    return-void
.end method

.method public setSex(I)V
    .registers 2

    .line 137
    iput p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->sex:I

    return-void
.end method

.method public setSignature_img_link(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->signature_img_link:Ljava/lang/String;

    return-void
.end method

.method public setSmall_head_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalUserInfo;->small_head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 236
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 237
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

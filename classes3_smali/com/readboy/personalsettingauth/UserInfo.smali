.class Lcom/readboy/personalsettingauth/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private avatar:Ljava/lang/String;

.field private birth_d:Ljava/lang/String;

.field private birth_m:Ljava/lang/String;

.field private birth_y:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private realname:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserInfoFromJsonStr(Ljava/lang/String;)Lcom/readboy/personalsettingauth/UserInfo;
    .registers 3

    .line 341
    new-instance v0, Lcom/readboy/personalsettingauth/UserInfo;

    invoke-direct {v0}, Lcom/readboy/personalsettingauth/UserInfo;-><init>()V

    .line 342
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_135

    .line 344
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "uid"

    .line 345
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setUid(Ljava/lang/String;)V

    const-string p0, "email"

    .line 346
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setEmail(Ljava/lang/String;)V

    const-string p0, "mobile"

    .line 347
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setMobile(Ljava/lang/String;)V

    const-string p0, "username"

    .line 348
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setUsername(Ljava/lang/String;)V

    const-string p0, "realname"

    .line 349
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setRealname(Ljava/lang/String;)V

    const-string p0, "gender"

    .line 350
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setGender(Ljava/lang/String;)V

    const-string p0, "birth_y"

    .line 351
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setBirth_y(Ljava/lang/String;)V

    const-string p0, "birth_m"

    .line 352
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setBirth_m(Ljava/lang/String;)V

    const-string p0, "birth_d"

    .line 353
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setBirth_d(Ljava/lang/String;)V

    const-string p0, "avatar"

    .line 354
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setAvatar(Ljava/lang/String;)V

    const-string p0, "constellation"

    .line 355
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setConstellation(Ljava/lang/String;)V

    const-string p0, "zodiac"

    .line 356
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setZodiac(Ljava/lang/String;)V

    const-string p0, "height"

    .line 357
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setHeight(Ljava/lang/String;)V

    const-string p0, "weight"

    .line 358
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setWeight(Ljava/lang/String;)V

    const-string p0, "qq"

    .line 359
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setQq(Ljava/lang/String;)V

    const-string p0, "weixin"

    .line 360
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setWeixin(Ljava/lang/String;)V

    const-string p0, "weibo"

    .line 361
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setWeibo(Ljava/lang/String;)V

    const-string p0, "bloodtype"

    .line 362
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setBloodtype(Ljava/lang/String;)V

    const-string p0, "province_id"

    .line 363
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setProvince_id(Ljava/lang/String;)V

    const-string p0, "city_id"

    .line 364
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setCity_id(Ljava/lang/String;)V

    const-string p0, "district_id"

    .line 365
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setDistrict_id(Ljava/lang/String;)V

    const-string p0, "address"

    .line 366
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setAddress(Ljava/lang/String;)V

    const-string p0, "school"

    .line 367
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setSchool(Ljava/lang/String;)V

    const-string p0, "grade"

    .line 368
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setGrade(Ljava/lang/String;)V

    const-string p0, "sign"

    .line 369
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setSign(Ljava/lang/String;)V

    const-string p0, "explain"

    .line 370
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setExplain(Ljava/lang/String;)V

    const-string p0, "lastlogin"

    .line 371
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setLastlogin(Ljava/lang/String;)V

    const-string p0, "money"

    .line 372
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setMoney(Ljava/lang/String;)V

    const-string p0, "bean"

    .line 373
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setBean(Ljava/lang/String;)V

    const-string p0, "level"

    .line 374
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setLevel(Ljava/lang/String;)V

    const-string p0, "experience"

    .line 375
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setExperience(Ljava/lang/String;)V

    const-string p0, "logincount"

    .line 376
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/UserInfo;->setLogincount(Ljava/lang/String;)V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_130} :catch_131

    goto :goto_135

    :catch_131
    move-exception p0

    .line 378
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_135
    :goto_135
    return-object v0
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/readboy/personalsettingauth/UserInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBirth_d()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/readboy/personalsettingauth/UserInfo;->birth_d:Ljava/lang/String;

    return-object v0
.end method

.method public getBirth_m()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/readboy/personalsettingauth/UserInfo;->birth_m:Ljava/lang/String;

    return-object v0
.end method

.method public getBirth_y()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/readboy/personalsettingauth/UserInfo;->birth_y:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/readboy/personalsettingauth/UserInfo;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getRealname()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/readboy/personalsettingauth/UserInfo;->realname:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/readboy/personalsettingauth/UserInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/readboy/personalsettingauth/UserInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBean(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setBirth_d(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/readboy/personalsettingauth/UserInfo;->birth_d:Ljava/lang/String;

    return-void
.end method

.method public setBirth_m(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/readboy/personalsettingauth/UserInfo;->birth_m:Ljava/lang/String;

    return-void
.end method

.method public setBirth_y(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/readboy/personalsettingauth/UserInfo;->birth_y:Ljava/lang/String;

    return-void
.end method

.method public setBloodtype(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setCity_id(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setConstellation(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setDistrict_id(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setExperience(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setExplain(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/readboy/personalsettingauth/UserInfo;->gender:Ljava/lang/String;

    return-void
.end method

.method public setGrade(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setLastlogin(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setLogincount(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setMoney(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setProvince_id(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setRealname(Ljava/lang/String;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/readboy/personalsettingauth/UserInfo;->realname:Ljava/lang/String;

    return-void
.end method

.method public setSchool(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/readboy/personalsettingauth/UserInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setWeibo(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setWeight(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setWeixin(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setZodiac(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

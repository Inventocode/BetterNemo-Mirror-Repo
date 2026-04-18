.class public Lcn/codemao/android/update/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# direct methods
.method public static getAppVersionCode(Landroid/content/Context;)I
    .registers 3

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 77
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_f} :catch_10

    return p0

    :catch_10
    move-exception p0

    .line 79
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 94
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 95
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    .line 98
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, "1.0"

    return-object p0
.end method

.method public static getCurrentNetType(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "connectivity"

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 170
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const-string v0, "unknow"

    if-nez p0, :cond_11

    goto :goto_50

    .line 173
    :cond_11
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    const-string v0, "wifi"

    goto :goto_50

    .line 175
    :cond_1b
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_50

    .line 176
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4d

    if-eq p0, v2, :cond_4d

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2e

    goto :goto_4d

    :cond_2e
    const/4 v0, 0x3

    if-eq p0, v0, :cond_4a

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4a

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4a

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4a

    const/16 v0, 0xc

    if-ne p0, v0, :cond_40

    goto :goto_4a

    :cond_40
    const/16 v0, 0xd

    if-ne p0, v0, :cond_47

    const-string p0, "4g"

    goto :goto_4f

    :cond_47
    const-string p0, ""

    goto :goto_4f

    :cond_4a
    :goto_4a
    const-string p0, "3g"

    goto :goto_4f

    :cond_4d
    :goto_4d
    const-string p0, "2g"

    :goto_4f
    move-object v0, p0

    :cond_50
    :goto_50
    return-object v0
.end method

.method public static getDensity(Landroid/content/Context;)I
    .registers 1

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    return p0
.end method

.method public static getHeader()Ljava/lang/String;
    .registers 3

    .line 26
    new-instance v0, Lcn/codemao/android/update/vo/HeaderVO;

    invoke-direct {v0}, Lcn/codemao/android/update/vo/HeaderVO;-><init>()V

    .line 27
    sget-object v1, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v1, v1, Lcn/codemao/android/update/CodemaoUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/codemao/android/update/util/DeviceUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/vo/HeaderVO;->setDevid(Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v1, v1, Lcn/codemao/android/update/CodemaoUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/codemao/android/update/util/DeviceUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/vo/HeaderVO;->setSwvc(I)V

    .line 29
    sget-object v1, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v1, v1, Lcn/codemao/android/update/CodemaoUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/codemao/android/update/util/DeviceUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/vo/HeaderVO;->setSwvn(Ljava/lang/String;)V

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/codemao/android/update/util/DeviceUtils;->getPhoneBroad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/codemao/android/update/util/DeviceUtils;->getPhoneModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/vo/HeaderVO;->setModel(Ljava/lang/String;)V

    .line 31
    sget-object v1, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v1, v1, Lcn/codemao/android/update/CodemaoUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/codemao/android/update/util/DeviceUtils;->getDensity(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/vo/HeaderVO;->setDensity(I)V

    .line 32
    sget-object v1, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v1, v1, Lcn/codemao/android/update/CodemaoUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/codemao/android/update/util/DeviceUtils;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/vo/HeaderVO;->setResolution(Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v1, v1, Lcn/codemao/android/update/CodemaoUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/codemao/android/update/util/DeviceUtils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/vo/HeaderVO;->setLa(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v1, v1, Lcn/codemao/android/update/CodemaoUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/codemao/android/update/util/DeviceUtils;->getCurrentNetType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/vo/HeaderVO;->setNet(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcn/codemao/android/update/util/DeviceUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/vo/HeaderVO;->setSysv(Ljava/lang/String;)V

    .line 36
    sget-object v1, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v1, v1, Lcn/codemao/android/update/CodemaoUpdate;->mPid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/vo/HeaderVO;->setPid(Ljava/lang/String;)V

    .line 38
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 39
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const-string v0, "phone"

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "000000000000000"

    :try_start_a
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 50
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_13

    return-object v1

    .line 60
    :cond_13
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 61
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    :goto_1d
    move-object v1, p0

    goto :goto_2a

    .line 63
    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_2a

    goto :goto_1d

    :catch_2a
    :goto_2a
    return-object v1
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_18

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_22

    .line 162
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 164
    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .registers 1

    .line 196
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneBroad()Ljava/lang/String;
    .registers 1

    .line 104
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneModel()Ljava/lang/String;
    .registers 1

    .line 108
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenResolution(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "x"

    const-string v2, "window"

    const/16 v3, 0x11

    if-ge v0, v3, :cond_2f

    .line 141
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_57

    .line 145
    :cond_2f
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 146
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 147
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 148
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 149
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_57
    return-object p0
.end method

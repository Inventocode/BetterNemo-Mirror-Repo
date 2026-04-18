.class public Lcom/codemao/nemo/util/SprefUtil;
.super Ljava/lang/Object;
.source "SprefUtil.java"


# static fields
.field private static sEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public static IsCurUserBeginner()Z
    .registers 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/MainApplication;->getCurEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "key_is_beginner_suffix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static agreeFirstAgreement()V
    .registers 4

    .line 308
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_firs_agreement"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static getCanPlayVideo()Z
    .registers 3

    .line 121
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "play_login_video"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCurUserEyeshieldMode()Z
    .registers 3

    .line 304
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_user_open_eyeshield_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCurUserFirstLoginMills()J
    .registers 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/MainApplication;->getCurEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "key_user_first_login_mills_suffix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurUserHasShowDot(Ljava/lang/String;)Z
    .registers 4

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/MainApplication;->getCurEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "key_user_course_package_id_span"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 294
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getCurUserHasShowTabIndicatorPop()Z
    .registers 3

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/MainApplication;->getCurEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "key_user_show_tab_indicator_pop_suffix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getEditor()Landroid/content/SharedPreferences$Editor;
    .registers 1

    .line 86
    sget-object v0, Lcom/codemao/nemo/util/SprefUtil;->sEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_e

    .line 87
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/util/SprefUtil;->sEditor:Landroid/content/SharedPreferences$Editor;

    .line 89
    :cond_e
    sget-object v0, Lcom/codemao/nemo/util/SprefUtil;->sEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static getFirstAgreementStatus()Z
    .registers 3

    .line 312
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_firs_agreement"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIMEI()Ljava/lang/String;
    .registers 3

    .line 74
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "imei"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIsCreateHelpShowed()Z
    .registers 3

    .line 191
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isCreateHelpShowed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIsCreatePublishGuideShow()Z
    .registers 3

    .line 227
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_is_create_top_guide_show"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIsFirstOpenApp()Z
    .registers 3

    .line 211
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_is_first_open_app"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIsFirstOpenRecommend()Z
    .registers 3

    .line 219
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_is_first_open_recommend"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIsNewbee()Z
    .registers 3

    .line 183
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isNewbee"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIsNewbeeGuideShowed()Z
    .registers 3

    .line 203
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isNewbeeGuideShowed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getOnlineTime()J
    .registers 4

    .line 163
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLineTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOnlineTimeStart()J
    .registers 4

    .line 155
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLineTimeStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPageVisitTime()J
    .registers 4

    .line 175
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pageVisitTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPostTime()J
    .registers 4

    .line 171
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSearchHistory()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search_history"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 137
    :cond_2b
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/util/SprefUtil$1;

    invoke-direct {v2}, Lcom/codemao/nemo/util/SprefUtil$1;-><init>()V

    .line 138
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 137
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getStatReportTime()J
    .registers 4

    .line 101
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "stat_report_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getUserId()J
    .registers 2

    .line 142
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 145
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    :goto_11
    return-wide v0
.end method

.method private static obtain()Landroid/content/SharedPreferences;
    .registers 1

    const-string v0, "nemo-system-config"

    .line 93
    invoke-static {v0}, Lcom/codemao/nemo/util/SprefUtil;->obtain(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 3

    .line 70
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static putAPPVersionCode()V
    .registers 5

    .line 231
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionCode()J

    move-result-wide v2

    const-string v4, "version_code"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putCanPlayVideo(Z)V
    .registers 4

    .line 125
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "play_login_video"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putCurUserBeginner(Z)V
    .registers 4

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/MainApplication;->getCurEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "key_is_beginner_suffix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v1

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putCurUserEyeshieldMode(Z)V
    .registers 4

    .line 299
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_user_open_eyeshield_mode"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putCurUserFirstLoginMills(J)V
    .registers 5

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/MainApplication;->getCurEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "key_user_first_login_mills_suffix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v1

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putCurUserHasShowDot(Ljava/lang/String;Z)V
    .registers 5

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/MainApplication;->getCurEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "key_user_course_package_id_span"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putCurUserHasShowTabIndicatorPop(Z)V
    .registers 4

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/MainApplication;->getCurEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "key_user_show_tab_indicator_pop_suffix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v1

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putIsCreateHelpShowed(Z)V
    .registers 4

    .line 195
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isCreateHelpShowed"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putIsCreatePublishGuideShow(Z)V
    .registers 4

    .line 223
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_is_create_top_guide_show"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putIsFirstOpenApp(Z)V
    .registers 4

    .line 207
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_is_first_open_app"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putIsFirstOpenRecommend()V
    .registers 4

    .line 215
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_is_first_open_recommend"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putIsNewbeeGuideShowed(Z)V
    .registers 4

    .line 199
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isNewbeeGuideShowed"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putOnlineTime(J)V
    .registers 7

    .line 159
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLineTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getUserId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putOnlineTimeStart()V
    .registers 7

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 151
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v2

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLineTimeStart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getUserId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putPageVisitTime(J)V
    .registers 5

    .line 179
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pageVisitTime"

    invoke-interface {v1, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putPostTime(J)V
    .registers 7

    .line 167
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getUserId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putSearchHistory(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 130
    :cond_3
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search_history"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getUserId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static putStatReportTime(J)V
    .registers 5

    .line 97
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "stat_report_time"

    invoke-interface {v1, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static setIMEI(Ljava/lang/String;)V
    .registers 4

    .line 78
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "imei"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

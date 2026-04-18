.class public Lcom/codemao/nemo/sdk/stat/StatHelper;
.super Ljava/lang/Object;
.source "StatHelper.java"


# static fields
.field private static curViewName:Ljava/lang/String; = "-"

.field private static sInit:Z = false

.field public static userChoseTabTestType:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static computeOnlineDuration()J
    .registers 4

    .line 197
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getStatReportTime()J

    move-result-wide v0

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-double v0, v2

    const-wide v2, 0x408f400000000000L  # 1000.0

    div-double/2addr v0, v2

    .line 199
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public static diffViewName(Landroid/app/Activity;)V
    .registers 2

    .line 186
    const-class v0, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getCurViewName()Ljava/lang/String;
    .registers 1

    .line 469
    sget-object v0, Lcom/codemao/nemo/sdk/stat/StatHelper;->curViewName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .registers 2

    .line 176
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "0"

    goto :goto_1e

    .line 177
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0
.end method

.method public static init(Landroid/content/Context;Z)V
    .registers 4

    .line 55
    sput-boolean p1, Lcom/codemao/nemo/sdk/stat/StatHelper;->sInit:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 60
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CodeMaoStat;->setLoggingEnabled(Z)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->setViewTracking(Z)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    .line 64
    invoke-virtual {p1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->setAutoTrackingUseShortName(Z)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    .line 65
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/codemao/android/stat/CodeMaoStat;->setChannel(Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->setENV(I)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    const/16 v0, 0x32

    .line 68
    invoke-virtual {p1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->setEventQueueSizeToSend(I)Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    const-string v0, "sysinfo"

    .line 69
    invoke-virtual {p1, p0, v0}, Lcn/codemao/android/stat/CodeMaoStat;->init(Landroid/content/Context;Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat;

    return-void
.end method

.method public static sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 404
    sget-boolean v0, Lcom/codemao/nemo/sdk/stat/StatHelper;->sInit:Z

    if-nez v0, :cond_5

    return-void

    .line 407
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 411
    :cond_c
    :try_start_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "element"

    .line 412
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_5c

    const-string v1, "user_id"

    if-nez p0, :cond_2a

    .line 414
    :try_start_22
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_2a
    const-string p0, "0"

    .line 416
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    if-eqz p1, :cond_3a

    .line 418
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_3a

    .line 419
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 421
    :cond_3a
    sget-object p0, Lcom/codemao/nemo/sdk/stat/StatHelper;->userChoseTabTestType:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_49

    const-string p0, "A/Btest"

    .line 422
    sget-object p1, Lcom/codemao/nemo/sdk/stat/StatHelper;->userChoseTabTestType:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    const-string p0, "channel"

    .line 424
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p0

    const-string p1, "all_click"

    invoke-virtual {p0, p1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception p0

    .line 432
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_60
    return-void
.end method

.method public static sendCommonEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    sget-boolean v0, Lcom/codemao/nemo/sdk/stat/StatHelper;->sInit:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_15

    .line 82
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 83
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/codemao/android/stat/CodeMaoStat;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1c

    .line 85
    :cond_15
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/codemao/android/stat/CodeMaoStat;->recordEvent(Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method public static sendCreateTime(JLjava/lang/String;)V
    .registers 6

    .line 207
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "userID"

    .line 209
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const-string v1, "workID"

    .line 211
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "dur"

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "nemo_duration"

    .line 213
    invoke-static {p0, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendCommonEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_38

    :catch_38
    return-void
.end method

.method public static sendErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 10

    const-string v0, "  "

    .line 222
    :try_start_2
    new-instance v1, Lcom/codemao/nemo/bean/CommonErrorData;

    invoke-direct {v1}, Lcom/codemao/nemo/bean/CommonErrorData;-><init>()V

    .line 223
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CommonErrorData;->getB()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/bean/CommonErrorBody;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v7

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p0, v4, p1}, Lcom/codemao/nemo/bean/CommonErrorBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance p0, Lcom/codemao/nemo/bean/CommonErrorLog;

    invoke-direct {p0, v1}, Lcom/codemao/nemo/bean/CommonErrorLog;-><init>(Lcom/codemao/nemo/bean/CommonErrorData;)V

    .line 225
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object p1

    const-class v0, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {p1, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-interface {p1, p0}, Lcom/codemao/nemo/retrofit/api/UserService;->postError(Lcom/codemao/nemo/bean/CommonErrorLog;)Lio/reactivex/Observable;

    move-result-object p0

    .line 226
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/codemao/nemo/sdk/stat/StatHelper$1;

    invoke-direct {p1}, Lcom/codemao/nemo/sdk/stat/StatHelper$1;-><init>()V

    .line 227
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_73} :catch_73

    :catch_73
    return-void
.end method

.method public static sendErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 253
    :try_start_0
    new-instance v0, Lcom/codemao/nemo/bean/CommonErrorData;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/CommonErrorData;-><init>()V

    .line 254
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CommonErrorData;->getB()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/bean/CommonErrorBody;

    const-string v3, ""

    invoke-direct {v2, p0, p1, v3}, Lcom/codemao/nemo/bean/CommonErrorBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance p0, Lcom/codemao/nemo/bean/CommonErrorLog;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/CommonErrorLog;-><init>(Lcom/codemao/nemo/bean/CommonErrorData;)V

    .line 256
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object p1

    const-class v0, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {p1, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-interface {p1, p0}, Lcom/codemao/nemo/retrofit/api/UserService;->postError(Lcom/codemao/nemo/bean/CommonErrorLog;)Lio/reactivex/Observable;

    move-result-object p0

    .line 257
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/codemao/nemo/sdk/stat/StatHelper$2;

    invoke-direct {p1}, Lcom/codemao/nemo/sdk/stat/StatHelper$2;-><init>()V

    .line 258
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_38

    :catch_38
    return-void
.end method

.method public static sendEventForce(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    sget-boolean v0, Lcom/codemao/nemo/sdk/stat/StatHelper;->sInit:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_15

    .line 100
    :try_start_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 101
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/codemao/android/stat/CodeMaoStat;->recordEventForced(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1d

    .line 103
    :cond_15
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcn/codemao/android/stat/CodeMaoStat;->recordEventForced(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_1d

    :catch_1d
    :goto_1d
    return-void
.end method

.method public static sendLoginEvent(Ljava/lang/String;Z)V
    .registers 5

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 161
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "login_way"

    .line 164
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_23
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "is_first_login"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "login"

    .line 167
    invoke-static {p0, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendCommonEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendMatomoViewEvent(Ljava/lang/String;Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public static sendNewCommonViewEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 305
    sget-boolean v0, Lcom/codemao/nemo/sdk/stat/StatHelper;->sInit:Z

    if-nez v0, :cond_5

    return-void

    .line 308
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 312
    :cond_c
    :try_start_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 313
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_7f

    const-string v2, "user_id"

    if-nez v1, :cond_25

    .line 314
    :try_start_1d
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_25
    const-string v1, "0"

    .line 316
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2a
    const-string v1, "page"

    .line 319
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "channel"

    .line 320
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v1, Lcom/codemao/nemo/sdk/stat/StatHelper;->curViewName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3e} :catch_7f

    const-string v2, "page_from"

    if-nez v1, :cond_48

    .line 322
    :try_start_42
    sget-object v1, Lcom/codemao/nemo/sdk/stat/StatHelper;->curViewName:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :cond_48
    const-string v1, "-"

    .line 324
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :goto_4d
    sget-object v1, Lcom/codemao/nemo/sdk/stat/StatHelper;->userChoseTabTestType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "A/Btest"

    .line 327
    sget-object v2, Lcom/codemao/nemo/sdk/stat/StatHelper;->userChoseTabTestType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    if-eqz p1, :cond_67

    .line 329
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_67

    .line 330
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 337
    :cond_67
    sget-object p1, Lcom/codemao/nemo/sdk/stat/StatHelper;->curViewName:Ljava/lang/String;

    invoke-static {p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendPageQuitEvent(Ljava/lang/String;)V

    .line 338
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/codemao/nemo/util/SprefUtil;->putPageVisitTime(J)V

    .line 339
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    const-string v1, "page_visit"

    invoke-virtual {p1, v1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 340
    sput-object p0, Lcom/codemao/nemo/sdk/stat/StatHelper;->curViewName:Ljava/lang/String;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_7e} :catch_7f

    goto :goto_83

    :catch_7f
    move-exception p0

    .line 343
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_83
    return-void
.end method

.method public static varargs sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 437
    array-length p1, p1

    if-nez p1, :cond_9

    :cond_5
    const/4 p1, 0x0

    .line 438
    invoke-static {p0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    :cond_9
    return-void
.end method

.method public static sendPageQuitEvent(Ljava/lang/String;)V
    .registers 7

    .line 350
    sget-boolean v0, Lcom/codemao/nemo/sdk/stat/StatHelper;->sInit:Z

    if-nez v0, :cond_5

    return-void

    .line 353
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_7d

    .line 356
    :cond_14
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getPageVisitTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_7d

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    .line 359
    div-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-lez v0, :cond_7d

    .line 363
    :try_start_2a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 364
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_37} :catch_79

    const-string v2, "user_id"

    if-nez v1, :cond_43

    .line 365
    :try_start_3b
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    :cond_43
    const-string v1, "0"

    .line 367
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_48
    const-string v1, "page_during"

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pagename"

    .line 370
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/event/ReportWorkExposureEvent;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/event/ReportWorkExposureEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 372
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p0

    const-string v1, "page_quit"

    invoke-virtual {p0, v1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_78} :catch_79

    goto :goto_7d

    :catch_79
    move-exception p0

    .line 374
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public static sendQuitEvent(Ljava/lang/String;)V
    .registers 6

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 134
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_18
    sget-object v1, Lcom/codemao/nemo/sdk/stat/StatHelper;->curViewName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 137
    sget-object v1, Lcom/codemao/nemo/sdk/stat/StatHelper;->curViewName:Ljava/lang/String;

    const-string v2, "viewname"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "quit_type"

    .line 140
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_32
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->computeOnlineDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-gez p0, :cond_3d

    move-wide v1, v3

    .line 146
    :cond_3d
    sget-object p0, Lcom/codemao/nemo/sdk/stat/StatHelper;->curViewName:Ljava/lang/String;

    invoke-static {p0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendPageQuitEvent(Ljava/lang/String;)V

    .line 147
    invoke-static {v3, v4}, Lcom/codemao/nemo/util/SprefUtil;->putPageVisitTime(J)V

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "duration"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "quit"

    .line 149
    invoke-static {p0, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendEventForce(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendStartEvent()V
    .registers 3

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/SprefUtil;->putStatReportTime(J)V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 118
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1f
    sget-object v1, Lcom/codemao/nemo/MainApplication;->chromeVersionStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 121
    sget-object v1, Lcom/codemao/nemo/MainApplication;->chromeVersionStr:Ljava/lang/String;

    const-string v2, "chrome_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    const-string v1, "start"

    .line 123
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendCommonEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendWorkExposure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 381
    sget-boolean v0, Lcom/codemao/nemo/sdk/stat/StatHelper;->sInit:Z

    if-nez v0, :cond_5

    return-void

    .line 384
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_48

    .line 388
    :cond_12
    :try_start_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 389
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_44

    const-string v2, "user_id"

    if-nez v1, :cond_2b

    .line 390
    :try_start_23
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_2b
    const-string v1, "0"

    .line 392
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_30
    const-string v1, "exposure_position"

    .line 394
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "work_ids"

    .line 395
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p0

    const-string p1, "work_exposure"

    invoke-virtual {p0, p1, v0}, Lcn/codemao/android/stat/CodeMaoStat;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p0

    .line 398
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_48
    :goto_48
    return-void
.end method

.method public static setCurViewName(Ljava/lang/String;)V
    .registers 1

    .line 473
    sput-object p0, Lcom/codemao/nemo/sdk/stat/StatHelper;->curViewName:Ljava/lang/String;

    return-void
.end method

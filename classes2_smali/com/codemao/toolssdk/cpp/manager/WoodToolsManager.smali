.class public Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;
.super Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;
.source "WoodToolsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;,
        Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Builder;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;


# direct methods
.method public static synthetic $r8$lambda$-VsSaZoqcgRGrPNuDD58cZnuAQE(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->toolLoadDidStart$lambda$0(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P7MlKkWdnRQ1BxfZVJ_x5K71uKk(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->toolLoadDidFail$lambda$2(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZyDbGPAtFpT0Y-BxPSXIP_wHft0(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->toolLoadDidFinish$lambda$1(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jSqpF2ieD9wClMceWoZhJJMIEZA(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->toolSessionEvent$lambda$3(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->Companion:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;-><init>()V

    return-void
.end method

.method private final getOtherDuration()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    sget-object v2, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ConstLogField;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->getVIEW_INIT_DURATION()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getLogEventDuration(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    .line 349
    :goto_13
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v2

    if-eqz v2, :cond_23

    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ConstLogField;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->getURL_INIT_DURATION()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getLogEventDuration(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 350
    :cond_23
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_36

    .line 351
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 352
    sget-object v3, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ConstLogField;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->getVIEW_INIT_DURATION()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    if-eqz v1, :cond_44

    .line 354
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 355
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ConstLogField;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->getURL_INIT_DURATION()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_44
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_53

    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ConstLogField;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->getVIEW_INIT_DURATION()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->clearEventTime(Ljava/lang/String;)V

    .line 358
    :cond_53
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_62

    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ConstLogField;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->getURL_INIT_DURATION()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->clearEventTime(Ljava/lang/String;)V

    :cond_62
    return-object v2
.end method

.method private static final toolLoadDidFail$lambda$2(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$toolsError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-interface {p0, p1, p2}, Lcom/codemao/toolssdk/view/CMToolSessionListener;->toolLoadDidFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V

    :cond_13
    return-void
.end method

.method private static final toolLoadDidFinish$lambda$1(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-interface {p0}, Lcom/codemao/toolssdk/view/CMToolSessionListener;->toolLoadDidFinish()V

    :cond_e
    return-void
.end method

.method private static final toolLoadDidStart$lambda$0(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-interface {p0}, Lcom/codemao/toolssdk/view/CMToolSessionListener;->toolLoadDidStart()V

    :cond_e
    return-void
.end method

.method private static final toolSessionEvent$lambda$3(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/view/CMToolSessionListener;->toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public changePageOrientation(Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;)V
    .registers 3

    .line 273
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getOrientationChangeListener()Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;->changeOrientation(Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;)V

    :cond_9
    return-void
.end method

.method public initConfig(Landroid/content/Context;)Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-super {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;->initConfig(Landroid/content/Context;)Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    return-object p0
.end method

.method public toolLoadDidFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/IResult<",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsError;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const-string v0, "toolsError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v1, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    :cond_13
    sget-object v0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->Companion:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->sendErrorReport(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V

    .line 243
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_28

    goto :goto_2a

    :cond_28
    :goto_28
    move-object v5, p1

    goto :goto_32

    :cond_2a
    :goto_2a
    if-eqz p2, :cond_31

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_31
    move-object v5, v0

    .line 244
    :goto_32
    sget-object p1, Lcom/codemao/toolssdk/utils/CTWorkUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTWorkUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object p2

    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getWorkType()Ljava/lang/String;

    move-result-object v0

    :cond_3e
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->getPlayerType()Lcom/codemao/toolssdk/manager/PlayerType;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/codemao/toolssdk/utils/CTWorkUtils;->getWorkType(Ljava/lang/String;Lcom/codemao/toolssdk/manager/PlayerType;)Ljava/lang/String;

    move-result-object v3

    .line 245
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    const/4 v2, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->getEnterFrom()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->isRunningOfflineMode()Z

    move-result v6

    .line 251
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->getOtherDuration()Ljava/util/Map;

    move-result-object v7

    .line 245
    invoke-virtual/range {v1 .. v7}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->loadEnd(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method public toolLoadDidFinish()V
    .registers 13

    .line 213
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolType()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    const-string v2, "ROKI"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 215
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_22

    :cond_21
    move-object v3, v1

    .line 216
    :goto_22
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUserId()J

    move-result-wide v4

    goto :goto_2f

    :cond_2d
    const-wide/16 v4, -0x1

    .line 217
    :goto_2f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUsername()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_3c

    :cond_3b
    move-object v6, v1

    .line 214
    :goto_3c
    sget-object v7, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$toolLoadDidFinish$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$toolLoadDidFinish$1;

    sget-object v8, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$toolLoadDidFinish$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$toolLoadDidFinish$2;

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerUserData;->setUserData(Ljava/lang/String;JLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    .line 225
    :cond_44
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_52

    new-instance v2, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    :cond_52
    sget-object v0, Lcom/codemao/toolssdk/utils/CTWorkUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTWorkUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getWorkType()Ljava/lang/String;

    move-result-object v1

    :cond_5e
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->getPlayerType()Lcom/codemao/toolssdk/manager/PlayerType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/utils/CTWorkUtils;->getWorkType(Ljava/lang/String;Lcom/codemao/toolssdk/manager/PlayerType;)Ljava/lang/String;

    move-result-object v5

    .line 229
    sget-object v3, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    const/4 v4, 0x1

    .line 232
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->getEnterFrom()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->isRunningOfflineMode()Z

    move-result v8

    .line 234
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->getOtherDuration()Ljava/util/Map;

    move-result-object v9

    const/16 v10, 0x8

    const/4 v11, 0x0

    .line 229
    invoke-static/range {v3 .. v11}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->loadEnd$default(Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public toolLoadDidStart()V
    .registers 3

    .line 206
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    :cond_e
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getLastLoadUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    const-string v1, ""

    :cond_18
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->loadStart(Ljava/lang/String;)V

    return-void
.end method

.method public toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 6

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getValue()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const-string v2, "type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    :cond_13
    move-object v0, v1

    :goto_14
    const-string v2, "WEBCAM_STATUS"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 257
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getValue()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_26

    const-string v1, "value"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 258
    :cond_26
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    if-eqz v0, :cond_4c

    const-string v0, "turn_off"

    .line 259
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 260
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->getCameraCloseCallback()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 261
    :cond_45
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "通知业务方，已关闭积木摄像头"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 264
    :cond_4c
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_5a

    new-instance v1, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    :cond_5a
    sget-object v0, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->Companion:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->getCommonReportData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "event事件通知"

    const-string v2, "toolSessionEvent"

    .line 267
    invoke-virtual {v0, v1, p1, v2}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

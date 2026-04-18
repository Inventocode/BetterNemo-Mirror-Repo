.class public final Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;
.super Ljava/lang/Object;
.source "CMToolsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/manager/CMToolsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/manager/CMToolsManager$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCommonParamsUriBuilder(Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 10

    .line 85
    invoke-direct/range {p0 .. p9}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getCommonParamsUriBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method private final getCommonParamsUriBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 11

    .line 347
    new-instance p5, Landroid/net/Uri$Builder;

    invoke-direct {p5}, Landroid/net/Uri$Builder;-><init>()V

    if-nez p1, :cond_9

    const-string p1, "EXAMPLE"

    :cond_9
    const-string p8, "toolType"

    invoke-virtual {p5, p8, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const/4 p5, 0x1

    const/4 p8, 0x0

    if-eqz p2, :cond_23

    .line 349
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_23

    const-string v0, "token"

    .line 350
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_23
    if-eqz p3, :cond_35

    .line 354
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_2d

    const/4 p2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p2, 0x0

    :goto_2e
    if-eqz p2, :cond_35

    const-string p2, "appId"

    .line 355
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_35
    if-eqz p4, :cond_46

    .line 359
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 p5, 0x0

    :goto_3f
    if-eqz p5, :cond_46

    const-string p2, "signature"

    .line 360
    invoke-virtual {p1, p2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 363
    :cond_46
    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getLocale()Ljava/util/Locale;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getLocale()Ljava/util/Locale;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5f

    goto :goto_6a

    .line 365
    :cond_5f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getLocale()Ljava/util/Locale;

    move-result-object p2

    if-nez p2, :cond_67

    const/4 p2, 0x0

    goto :goto_6c

    .line 368
    :cond_67
    sget-object p2, Lcom/codemao/toolssdk/manager/LanguageMode;->EnUS:Lcom/codemao/toolssdk/manager/LanguageMode;

    goto :goto_6c

    .line 364
    :cond_6a
    :goto_6a
    sget-object p2, Lcom/codemao/toolssdk/manager/LanguageMode;->ZhCN:Lcom/codemao/toolssdk/manager/LanguageMode;

    :goto_6c
    if-eqz p2, :cond_77

    .line 371
    invoke-virtual {p2}, Lcom/codemao/toolssdk/manager/LanguageMode;->getStr()Ljava/lang/String;

    move-result-object p2

    const-string p3, "language"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_77
    if-eqz p6, :cond_86

    .line 375
    invoke-virtual {p6}, Lcom/codemao/toolssdk/manager/StageType;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "stageType"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_86
    if-eqz p7, :cond_95

    .line 379
    invoke-virtual {p7}, Lcom/codemao/toolssdk/manager/PlayerType;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "playerType"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_95
    if-eqz p9, :cond_9c

    const-string p2, "toolMode"

    .line 382
    invoke-virtual {p1, p2, p9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 386
    :cond_9c
    invoke-static {}, Lcom/codemao/toolssdk/manager/CMToolsManager;->access$getEnvMode$cp()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object p2

    sget-object p3, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    packed-switch p2, :pswitch_data_e6

    .line 396
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_b1  #0xa
    const-string p2, "production"

    goto :goto_ce

    :pswitch_b4  #0x9
    const-string p2, "staging"

    goto :goto_ce

    :pswitch_b7  #0x8
    const-string p2, "test06"

    goto :goto_ce

    :pswitch_ba  #0x7
    const-string p2, "test05"

    goto :goto_ce

    :pswitch_bd  #0x6
    const-string p2, "test04"

    goto :goto_ce

    :pswitch_c0  #0x5
    const-string p2, "test03"

    goto :goto_ce

    :pswitch_c3  #0x4
    const-string p2, "test02"

    goto :goto_ce

    :pswitch_c6  #0x3
    const-string p2, "test01"

    goto :goto_ce

    :pswitch_c9  #0x2
    const-string p2, "test"

    goto :goto_ce

    :pswitch_cc  #0x1
    const-string p2, "development"

    :goto_ce
    const-string p3, "api_env"

    .line 385
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "start_time"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "uriBuilder"

    .line 400
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_cc  #00000001
        :pswitch_c9  #00000002
        :pswitch_c6  #00000003
        :pswitch_c3  #00000004
        :pswitch_c0  #00000005
        :pswitch_bd  #00000006
        :pswitch_ba  #00000007
        :pswitch_b7  #00000008
        :pswitch_b4  #00000009
        :pswitch_b1  #0000000a
    .end packed-switch
.end method

.method private final getEnvUrl(ZLandroid/content/Context;)Ljava/lang/String;
    .registers 6

    if-eqz p2, :cond_27

    .line 404
    sget-object v0, Lcom/codemao/toolssdk/manager/WebLocalResourceManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebLocalResourceManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/WebLocalResourceManager;->getUseLocalCache()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_19

    .line 407
    sget-object p1, Lcom/codemao/toolssdk/manager/WebLocalType;->INTL_ROKI:Lcom/codemao/toolssdk/manager/WebLocalType;

    goto :goto_1b

    .line 409
    :cond_19
    sget-object p1, Lcom/codemao/toolssdk/manager/WebLocalType;->ROKI:Lcom/codemao/toolssdk/manager/WebLocalType;

    .line 405
    :goto_1b
    invoke-virtual {v0, p2, p1}, Lcom/codemao/toolssdk/manager/WebLocalResourceManager;->getWebLocalCachePath(Landroid/content/Context;Lcom/codemao/toolssdk/manager/WebLocalType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_27
    if-eqz p1, :cond_2c

    const-string p1, "https://tools-entry.codingcat.com"

    return-object p1

    .line 417
    :cond_2c
    invoke-static {}, Lcom/codemao/toolssdk/manager/CMToolsManager;->access$getEnvMode$cp()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object p1

    sget-object p2, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_4e

    .line 422
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_41  #0xa
    const-string p1, "https://tools-entry.codemao.cn"

    goto :goto_4c

    :pswitch_44  #0x9
    const-string p1, "https://staging-tools-entry.codemao.cn"

    goto :goto_4c

    :pswitch_47  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
    const-string p1, "https://test-tools-entry.codemao.cn"

    goto :goto_4c

    :pswitch_4a  #0x1
    const-string p1, "https://dev-tools-entry.codemao.cn"

    :goto_4c
    return-object p1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_4a  #00000001
        :pswitch_47  #00000002
        :pswitch_47  #00000003
        :pswitch_47  #00000004
        :pswitch_47  #00000005
        :pswitch_47  #00000006
        :pswitch_47  #00000007
        :pswitch_47  #00000008
        :pswitch_44  #00000009
        :pswitch_41  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public final envMode(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V
    .registers 3

    const-string v0, "envMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-static {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->access$setEnvMode$cp(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V

    .line 123
    sget-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->envMode(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V

    return-void
.end method

.method public final getCommonReportData()Ljava/lang/String;
    .registers 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userLocalCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/codemao/toolssdk/manager/WebLocalResourceManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebLocalResourceManager;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/WebLocalResourceManager;->getUseLocalCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInternational: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/toolssdk/manager/CMToolsManager;->access$isInternational$cp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->getDeviceInfoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEnvMode()Lcom/codemao/toolssdk/manager/CMTEnvMode;
    .registers 2

    .line 126
    sget-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getEnvMode()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v0

    return-object v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .registers 2

    .line 111
    invoke-static {}, Lcom/codemao/toolssdk/manager/CMToolsManager;->access$getLocale$cp()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final getMiaoCodeUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 22

    move-object/from16 v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 258
    invoke-direct/range {v1 .. v10}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getCommonParamsUriBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    if-eqz v0, :cond_27

    .line 270
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-eqz v2, :cond_27

    const-string v2, "miaoCode"

    .line 271
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 274
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p0

    move/from16 v3, p6

    move-object/from16 v4, p9

    invoke-direct {p0, v3, v4}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getEnvUrl(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNotchMargin()F
    .registers 2

    .line 88
    sget-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getNotchMargin()F

    move-result v0

    return v0
.end method

.method public final getTemplateUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 22

    move-object/from16 v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 227
    invoke-direct/range {v1 .. v10}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getCommonParamsUriBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    if-eqz v0, :cond_27

    .line 239
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-eqz v2, :cond_27

    const-string v2, "sampleId"

    .line 240
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 243
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p0

    move/from16 v3, p6

    move-object/from16 v4, p9

    invoke-direct {p0, v3, v4}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getEnvUrl(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;
    .registers 2

    .line 109
    invoke-static {}, Lcom/codemao/toolssdk/manager/CMToolsManager;->access$getToolsData$cp()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v0

    return-object v0
.end method

.method public final getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;
    .registers 2

    .line 103
    sget-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v0

    return-object v0
.end method

.method public final getWorkListUrl()Ljava/lang/String;
    .registers 5

    .line 162
    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getEnvMode()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v0

    sget-object v1, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_68

    .line 200
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_15  #0xa
    const-string v0, "https://kn.codemao.cn/home/"

    goto :goto_32

    :pswitch_18  #0x9
    const-string v0, "https://staging-kn.codemao.cn/home/"

    goto :goto_32

    :pswitch_1b  #0x8
    const-string v0, "https://test6-kn.codemao.cn/home/"

    goto :goto_32

    :pswitch_1e  #0x7
    const-string v0, "https://test5-kn.codemao.cn/home/"

    goto :goto_32

    :pswitch_21  #0x6
    const-string v0, "https://test4-kn.codemao.cn/home/"

    goto :goto_32

    :pswitch_24  #0x5
    const-string v0, "https://test3-kn.codemao.cn/home/"

    goto :goto_32

    :pswitch_27  #0x4
    const-string v0, "https://test2-kn.codemao.cn/home/"

    goto :goto_32

    :pswitch_2a  #0x3
    const-string v0, "https://test1-kn.codemao.cn/home/"

    goto :goto_32

    :pswitch_2d  #0x2
    const-string v0, "https://test-kn.codemao.cn/home/"

    goto :goto_32

    :pswitch_30  #0x1
    const-string v0, "https://dev-kn.codemao.cn/home/"

    .line 205
    :goto_32
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 206
    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v2

    if-eqz v2, :cond_66

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 207
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_4b

    const/4 v3, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v3, 0x0

    :goto_4c
    if-eqz v3, :cond_66

    const-string v3, "token"

    .line 208
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_66
    return-object v0

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_30  #00000001
        :pswitch_2d  #00000002
        :pswitch_2a  #00000003
        :pswitch_27  #00000004
        :pswitch_24  #00000005
        :pswitch_21  #00000006
        :pswitch_1e  #00000007
        :pswitch_1b  #00000008
        :pswitch_18  #00000009
        :pswitch_15  #0000000a
    .end packed-switch
.end method

.method public final isDebug()Z
    .registers 2

    .line 110
    invoke-static {}, Lcom/codemao/toolssdk/manager/CMToolsManager;->access$isDebug$cp()Z

    move-result v0

    return v0
.end method

.method public final sendErrorReport(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V
    .registers 5
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

    .line 152
    sget-object v0, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getCommonReportData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {v0, p1, p2}, Lcom/codemao/toolssdk/manager/ReportManager;->sendErrorReport(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final setAppVersionCode(Ljava/lang/String;)V
    .registers 2

    .line 112
    invoke-static {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->access$setAppVersionCode$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setNotchMargin(F)V
    .registers 3

    .line 90
    invoke-static {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->access$setNotchMargin$cp(F)V

    .line 91
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "manager设置刘海高度"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    .line 92
    sget-object p1, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-static {}, Lcom/codemao/toolssdk/manager/CMToolsManager;->access$getNotchMargin$cp()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->setNotchMargin(F)V

    return-void
.end method

.method public final setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)V
    .registers 2

    .line 109
    invoke-static {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->access$setToolsData$cp(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)V

    return-void
.end method

.method public final setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V
    .registers 3

    .line 105
    invoke-static {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->access$setUserData$cp(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V

    .line 106
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "manager设置userData"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    .line 107
    sget-object p1, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-static {}, Lcom/codemao/toolssdk/manager/CMToolsManager;->access$getUserData$cp()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V

    return-void
.end method

.method public final spliceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 26

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    .line 302
    invoke-direct/range {v3 .. v12}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getCommonParamsUriBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2f

    .line 314
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_27

    const/4 v6, 0x1

    goto :goto_28

    :cond_27
    const/4 v6, 0x0

    :goto_28
    if-eqz v6, :cond_2f

    const-string v6, "workId"

    .line 315
    invoke-virtual {v3, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2f
    if-eqz v1, :cond_41

    .line 319
    invoke-interface/range {p6 .. p6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_39

    const/4 v0, 0x1

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    if-eqz v0, :cond_41

    const-string v0, "fileUrl"

    .line 320
    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_41
    if-eqz v2, :cond_52

    .line 324
    invoke-interface/range {p7 .. p7}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v4, 0x0

    :goto_4b
    if-eqz v4, :cond_52

    const-string v0, "courseUrl"

    .line 325
    invoke-virtual {v3, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 332
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p0

    move/from16 v2, p8

    move-object/from16 v4, p11

    invoke-direct {p0, v2, v4}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getEnvUrl(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

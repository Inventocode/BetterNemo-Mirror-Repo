.class public final Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;
.super Ljava/lang/Object;
.source "StorageLogEventUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic aiMatch$default(Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;ZZLjava/lang/String;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 24
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->aiMatch(ZZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic aiTemplate$default(Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;ZILjava/lang/String;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 13
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->aiTemplate(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic albumPermission$default(Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;ZLjava/lang/String;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 5
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->albumPermission(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic cameraPermission$default(Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;ZLjava/lang/String;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 9
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->cameraPermission(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final aiMatch(ZZLjava/lang/String;)V
    .registers 12

    if-eqz p2, :cond_5

    const-string p2, "sence"

    goto :goto_7

    :cond_5
    const-string p2, "actor"

    .line 26
    :goto_7
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const-string v1, "ct_type"

    .line 30
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v1, "ct_sdk_ai_painting_match"

    move v2, p1

    move-object v3, p3

    .line 26
    invoke-static/range {v0 .. v7}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultiple$default(Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;ZILjava/lang/Object;)V

    return-void
.end method

.method public final aiTemplate(ZILjava/lang/String;)V
    .registers 10

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    const-string p2, "sence"

    goto :goto_8

    :cond_6
    const-string p2, "actor"

    .line 15
    :goto_8
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const-string v1, "ct_type"

    .line 19
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const-string v1, "ct_sdk_ai_painting_templates"

    move v2, p1

    move-object v3, p3

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultiple(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final albumPermission(ZLjava/lang/String;)V
    .registers 10

    .line 6
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const-string v1, "ct_sdk_photo_album_permission"

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEvent$default(Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final cameraPermission(ZLjava/lang/String;)V
    .registers 10

    .line 10
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const-string v1, "ct_sdk_camera_permission"

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEvent$default(Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

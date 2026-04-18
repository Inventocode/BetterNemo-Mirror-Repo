.class public final Lcom/codemao/toolssdk/func/logevent/OfflineLogEventUtils;
.super Ljava/lang/Object;
.source "OfflineLogEventUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/logevent/OfflineLogEventUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/func/logevent/OfflineLogEventUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/logevent/OfflineLogEventUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/logevent/OfflineLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/OfflineLogEventUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final enable(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 46
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_10

    .line 47
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    if-nez v0, :cond_18

    const-string v0, "offline_tool_type"

    .line 48
    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const-string p2, "offline_version"

    .line 50
    invoke-interface {v4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "offline_cloud_version"

    .line 51
    invoke-interface {v4, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "offline_sha256"

    .line 52
    invoke-interface {v4, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "offline_cloud_sha256"

    .line 53
    invoke-interface {v4, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const/4 v5, 0x0

    const-string v1, "ct_sdk_offline_loading"

    move v2, p1

    move-object v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultipleAny(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

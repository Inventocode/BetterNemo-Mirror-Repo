.class public final Lcom/codemao/toolssdk/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/DeviceUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/DeviceUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/DeviceUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/DeviceUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/DeviceUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isXiaomiPad6(Landroid/content/Context;)Z
    .registers 20

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1fff

    const/16 v17, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v17}, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->setWebviewUA(Ljava/lang/String;)V

    .line 14
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "设备信息："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->getBrand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Xiaomi"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 16
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pipa"

    .line 15
    invoke-static {v2, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 19
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "23043RP34C"

    .line 18
    invoke-static {v2, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 21
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "23043RP34G"

    invoke-static {v1, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_6c
    return v3

    :cond_6d
    const/4 v0, 0x0

    return v0
.end method

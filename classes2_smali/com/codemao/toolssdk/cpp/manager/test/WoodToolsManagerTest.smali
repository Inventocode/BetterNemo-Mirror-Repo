.class public final Lcom/codemao/toolssdk/cpp/manager/test/WoodToolsManagerTest;
.super Ljava/lang/Object;
.source "WoodToolsManagerTest.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/cpp/manager/test/WoodToolsManagerTest;

.field private static customLocalHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/cpp/manager/test/WoodToolsManagerTest;

    invoke-direct {v0}, Lcom/codemao/toolssdk/cpp/manager/test/WoodToolsManagerTest;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/cpp/manager/test/WoodToolsManagerTest;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/test/WoodToolsManagerTest;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final enableTestLocalHost()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final getTestLocalHost()Ljava/lang/String;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/test/WoodToolsManagerTest;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/test/WoodToolsManagerTest;->enableTestLocalHost()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 26
    sget-object v0, Lcom/codemao/toolssdk/cpp/manager/test/WoodToolsManagerTest;->customLocalHost:Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isDebug()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

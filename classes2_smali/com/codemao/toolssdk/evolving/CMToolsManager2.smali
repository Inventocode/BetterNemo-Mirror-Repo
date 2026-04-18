.class public Lcom/codemao/toolssdk/evolving/CMToolsManager2;
.super Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;
.source "CMToolsManager2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;,
        Lcom/codemao/toolssdk/evolving/CMToolsManager2$Builder;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

.field private static appVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAppVersionCode$cp()Ljava/lang/String;
    .registers 1

    .line 10
    sget-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->appVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setAppVersionCode$cp(Ljava/lang/String;)V
    .registers 1

    .line 10
    sput-object p0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->appVersionCode:Ljava/lang/String;

    return-void
.end method

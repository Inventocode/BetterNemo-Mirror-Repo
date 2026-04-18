.class Lcom/codemao/creativecenter/utils/CreateConfigManager$SingletonInstance;
.super Ljava/lang/Object;
.source "CreateConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/utils/CreateConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/codemao/creativecenter/utils/CreateConfigManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/utils/CreateConfigManager;-><init>(Lcom/codemao/creativecenter/utils/CreateConfigManager$1;)V

    sput-object v0, Lcom/codemao/creativecenter/utils/CreateConfigManager$SingletonInstance;->INSTANCE:Lcom/codemao/creativecenter/utils/CreateConfigManager;

    return-void
.end method

.method static synthetic access$100()Lcom/codemao/creativecenter/utils/CreateConfigManager;
    .registers 1

    .line 13
    sget-object v0, Lcom/codemao/creativecenter/utils/CreateConfigManager$SingletonInstance;->INSTANCE:Lcom/codemao/creativecenter/utils/CreateConfigManager;

    return-object v0
.end method

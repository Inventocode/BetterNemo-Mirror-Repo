.class public Lcom/codemao/creativecenter/utils/CreateConfigManager;
.super Ljava/lang/Object;
.source "CreateConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/CreateConfigManager$SingletonInstance;
    }
.end annotation


# instance fields
.field public isPad:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/creativecenter/utils/CreateConfigManager$1;)V
    .registers 2

    .line 8
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/CreateConfigManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;
    .registers 1

    .line 18
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager$SingletonInstance;->access$100()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    return-object v0
.end method

.class Lcom/codemao/toolssdk/manager/AudioPlayerManager$Holder;
.super Ljava/lang/Object;
.source "AudioPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/manager/AudioPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final player:Lcom/codemao/toolssdk/manager/AudioPlayerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 464
    new-instance v0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$1;)V

    sput-object v0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$Holder;->player:Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    return-void
.end method

.method static synthetic access$000()Lcom/codemao/toolssdk/manager/AudioPlayerManager;
    .registers 1

    .line 463
    sget-object v0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$Holder;->player:Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    return-object v0
.end method

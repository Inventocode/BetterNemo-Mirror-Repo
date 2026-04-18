.class Lcom/codemao/creativestore/AudioPlayer$Holder;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final player:Lcom/codemao/creativestore/AudioPlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 284
    new-instance v0, Lcom/codemao/creativestore/AudioPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativestore/AudioPlayer;-><init>(Lcom/codemao/creativestore/AudioPlayer$1;)V

    sput-object v0, Lcom/codemao/creativestore/AudioPlayer$Holder;->player:Lcom/codemao/creativestore/AudioPlayer;

    return-void
.end method

.method static synthetic access$500()Lcom/codemao/creativestore/AudioPlayer;
    .registers 1

    .line 283
    sget-object v0, Lcom/codemao/creativestore/AudioPlayer$Holder;->player:Lcom/codemao/creativestore/AudioPlayer;

    return-object v0
.end method

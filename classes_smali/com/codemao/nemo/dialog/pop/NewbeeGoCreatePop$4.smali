.class Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$4;
.super Ljava/lang/Object;
.source "NewbeeGoCreatePop.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->playVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)V
    .registers 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    const/4 p1, 0x1

    return p1
.end method

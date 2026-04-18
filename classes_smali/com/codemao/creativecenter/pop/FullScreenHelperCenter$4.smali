.class Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$4;
.super Ljava/lang/Object;
.source "FullScreenHelperCenter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->playVideo(Landroid/view/View;Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$4;->this$0:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_8

    .line 213
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$4;->this$0:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->access$200(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)V

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

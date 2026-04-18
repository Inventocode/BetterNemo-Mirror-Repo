.class public final Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1$1;
.super Ljava/lang/Object;
.source "CTImageCutFragment.kt"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;

.field final synthetic this$1:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;

    iput-object p2, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1$1;->this$1:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;Z)Z"
        }
    .end annotation

    .line 228
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->onMattingFailed()V

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 239
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-eqz p1, :cond_14

    .line 245
    iget-object p2, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1$1;->this$1:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {p2, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$setCutPath$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V

    .line 246
    iget-object p2, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;

    invoke-static {p2, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->access$mattingResult(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;Ljava/lang/String;)V

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6

    .line 221
    check-cast p1, Ljava/io/File;

    invoke-virtual/range {p0 .. p5}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1$1;->onResourceReady(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method

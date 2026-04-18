.class Lcom/codemao/nemo/view/ReWorkSuccessDialog$1;
.super Ljava/lang/Object;
.source "ReWorkSuccessDialog.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/ReWorkSuccessDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/ReWorkSuccessDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/ReWorkSuccessDialog;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/codemao/nemo/view/ReWorkSuccessDialog$1;->this$0:Lcom/codemao/nemo/view/ReWorkSuccessDialog;

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
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    const/4 p2, 0x1

    .line 74
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->setLoopCount(I)V

    .line 75
    iget-object p2, p0, Lcom/codemao/nemo/view/ReWorkSuccessDialog$1;->this$0:Lcom/codemao/nemo/view/ReWorkSuccessDialog;

    iget-object p2, p2, Lcom/codemao/nemo/view/ReWorkSuccessDialog;->ivRework02:Landroid/widget/ImageView;

    new-instance p3, Lcom/codemao/nemo/view/ReWorkSuccessDialog$1$1;

    invoke-direct {p3, p0, p1}, Lcom/codemao/nemo/view/ReWorkSuccessDialog$1$1;-><init>(Lcom/codemao/nemo/view/ReWorkSuccessDialog$1;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 81
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->startFromFirstFrame()V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6

    .line 66
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual/range {p0 .. p5}, Lcom/codemao/nemo/view/ReWorkSuccessDialog$1;->onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method

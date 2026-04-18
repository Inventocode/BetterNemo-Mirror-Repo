.class Lcom/codemao/nemo/view/ReWorkSuccessDialog$1$1;
.super Ljava/lang/Object;
.source "ReWorkSuccessDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/ReWorkSuccessDialog$1;->onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/view/ReWorkSuccessDialog$1;

.field final synthetic val$resource:Lcom/bumptech/glide/load/resource/gif/GifDrawable;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/ReWorkSuccessDialog$1;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V
    .registers 3

    .line 75
    iput-object p1, p0, Lcom/codemao/nemo/view/ReWorkSuccessDialog$1$1;->this$1:Lcom/codemao/nemo/view/ReWorkSuccessDialog$1;

    iput-object p2, p0, Lcom/codemao/nemo/view/ReWorkSuccessDialog$1$1;->val$resource:Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkSuccessDialog$1$1;->this$1:Lcom/codemao/nemo/view/ReWorkSuccessDialog$1;

    iget-object v0, v0, Lcom/codemao/nemo/view/ReWorkSuccessDialog$1;->this$0:Lcom/codemao/nemo/view/ReWorkSuccessDialog;

    iget-object v0, v0, Lcom/codemao/nemo/view/ReWorkSuccessDialog;->ivRework02:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/codemao/nemo/view/ReWorkSuccessDialog$1$1;->val$resource:Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

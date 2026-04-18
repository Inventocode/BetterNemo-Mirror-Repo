.class Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$5;
.super Ljava/lang/Object;
.source "ShareProductKnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->share()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V
    .registers 2

    .line 435
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$5;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 438
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$5;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iget-object v0, v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->ivBg:Landroid/widget/ImageView;

    const v1, 0x7f0e008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.class Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$3;
.super Ljava/lang/Object;
.source "BaseKNWorkPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$3;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$3;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->access$100(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)Lcom/codemao/nemo/view/KeyboardHeightProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->start()V

    return-void
.end method

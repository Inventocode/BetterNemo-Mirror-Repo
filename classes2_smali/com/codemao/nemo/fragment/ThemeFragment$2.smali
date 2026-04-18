.class Lcom/codemao/nemo/fragment/ThemeFragment$2;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "ThemeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/ThemeFragment;->getBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/util/List<",
        "Lcom/codemao/nemo/bean/BannerData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/ThemeFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/ThemeFragment;)V
    .registers 2

    .line 264
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeFragment$2;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onNetError()V
    .registers 1

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 264
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/ThemeFragment$2;->onSuc(Ljava/util/List;)V

    return-void
.end method

.method public onSuc(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/BannerData;",
            ">;)V"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment$2;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/ThemeFragment;->access$100(Lcom/codemao/nemo/fragment/ThemeFragment;Ljava/util/List;)V

    return-void
.end method

.class Lcom/codemao/nemo/fragment/CourseFragment$5;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "CourseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CourseFragment;->getBanner()V
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
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CourseFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CourseFragment;)V
    .registers 2

    .line 428
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment$5;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

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

    .line 428
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/CourseFragment$5;->onSuc(Ljava/util/List;)V

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

    .line 431
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment$5;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/CourseFragment;->access$500(Lcom/codemao/nemo/fragment/CourseFragment;Ljava/util/List;)V

    return-void
.end method

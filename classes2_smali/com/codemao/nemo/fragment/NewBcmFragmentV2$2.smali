.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$2;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "NewBcmFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->doNet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 274
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$602(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Z)Z

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 279
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$602(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Z)Z

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 266
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$2;->onSuccess(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method protected onSuccess(Lokhttp3/ResponseBody;)V
    .registers 2

    return-void
.end method

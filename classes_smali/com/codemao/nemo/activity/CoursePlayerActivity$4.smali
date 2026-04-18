.class Lcom/codemao/nemo/activity/CoursePlayerActivity$4;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "CoursePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CoursePlayerActivity;->doNet()V
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
.field final synthetic this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V
    .registers 2

    .line 440
    iput-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$4;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 448
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$4;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$1002(Lcom/codemao/nemo/activity/CoursePlayerActivity;Z)Z

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 453
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$4;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$1002(Lcom/codemao/nemo/activity/CoursePlayerActivity;Z)Z

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 440
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity$4;->onSuccess(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method protected onSuccess(Lokhttp3/ResponseBody;)V
    .registers 2

    return-void
.end method

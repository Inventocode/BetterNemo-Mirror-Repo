.class Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$3;
.super Ljava/lang/Object;
.source "NewBeeWorkPlayActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->downloadVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;Ljava/lang/String;)V
    .registers 3

    .line 230
    iput-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$3;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 252
    :try_start_0
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$3;->val$path:Ljava/lang/String;

    invoke-static {p1}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .line 233
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$3;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_2e

    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$3;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_2e

    .line 238
    :cond_11
    :try_start_11
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$3;->val$path:Ljava/lang/String;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokhttp3/ResponseBody;

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/giu/xzz/utils/FileUtil;->writeToFile(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 239
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$3;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    iget-object p2, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$3;->val$path:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$802(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_27} :catch_28

    goto :goto_2d

    .line 242
    :catch_28
    :try_start_28
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$3;->val$path:Ljava/lang/String;

    invoke-static {p1}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_2d

    :catch_2d
    :goto_2d
    return-void

    .line 234
    :cond_2e
    :goto_2e
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$3;->val$path:Ljava/lang/String;

    invoke-static {p1}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    return-void
.end method

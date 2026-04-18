.class Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;
.super Ljava/lang/Object;
.source "NewBeeWorkPlayActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->downloadGuideImage()V
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

    .line 268
    iput-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;->val$path:Ljava/lang/String;

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

    .line 291
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$1100(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V

    .line 293
    :try_start_5
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;->val$path:Ljava/lang/String;

    invoke-static {p1}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_a

    :catch_a
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

    .line 271
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_40

    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_40

    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$200(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_40

    .line 276
    :cond_19
    :try_start_19
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;->val$path:Ljava/lang/String;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokhttp3/ResponseBody;

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/giu/xzz/utils/FileUtil;->writeToFile(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 277
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    iget-object p2, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;->val$path:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$902(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$1000(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_34} :catch_35

    goto :goto_3f

    .line 280
    :catch_35
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$1100(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V

    .line 282
    :try_start_3a
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;->val$path:Ljava/lang/String;

    invoke-static {p1}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_3f

    :catch_3f
    :goto_3f
    return-void

    .line 272
    :cond_40
    :goto_40
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;->val$path:Ljava/lang/String;

    invoke-static {p1}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    return-void
.end method

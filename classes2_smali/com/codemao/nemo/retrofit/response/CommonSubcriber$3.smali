.class Lcom/codemao/nemo/retrofit/response/CommonSubcriber$3;
.super Ljava/lang/Object;
.source "CommonSubcriber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->onFailureOnMain(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/retrofit/response/CommonSubcriber;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/retrofit/response/CommonSubcriber;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 155
    iput-object p1, p0, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$3;->this$0:Lcom/codemao/nemo/retrofit/response/CommonSubcriber;

    iput-object p2, p0, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$3;->val$code:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$3;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$3;->this$0:Lcom/codemao/nemo/retrofit/response/CommonSubcriber;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$3;->val$code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$3;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1f
    return-void
.end method

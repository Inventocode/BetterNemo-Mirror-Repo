.class Lcom/codemao/creativestore/presenter/CreateUtils$9;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->initLocalFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;Ljava/lang/Exception;)V
    .registers 3

    .line 1230
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$9;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iput-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$9;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1233
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$9;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$9;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/codemao/creativestore/view/NewBcmView;->onLoadBcmError(Ljava/lang/Exception;)V

    return-void
.end method

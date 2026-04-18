.class Lcom/codemao/creativestore/presenter/CreateUtils$22;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->deleteWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/presenter/CreateUtils;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V
    .registers 2

    .line 3108
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$22;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 3111
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$22;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$22;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteDirectory(Ljava/lang/String;)V

    .line 3112
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$22;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6f

    .line 3113
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$22;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3114
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ImgDictVO;

    .line 3115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils$22;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2200(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_40

    .line 3118
    :cond_6f
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$22;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteImgPath:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3119
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$22;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->updateToDeleteImg()V

    return-void
.end method

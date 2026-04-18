.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(ZZZLjava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$finalFilePath:Ljava/lang/String;

.field final synthetic val$newData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 6

    .line 755
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$finalFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$newData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    iput-object p5, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 803
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    invoke-static {v0, v1, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$100(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .registers 7

    const-string v0, ".bcm"

    .line 759
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$finalFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-static {v1, v2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/BcmVO;

    .line 760
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$newData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->cloudVariables:Ljava/util/List;

    .line 761
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getVariable()Lcom/codemao/creativestore/bean/VariablesVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/VariablesVO;->getVariable_dict()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 762
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/VariableVO;

    .line 763
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/VariableVO;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "public"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5e

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/VariableVO;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "private"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    :cond_5e
    const/4 v4, 0x0

    .line 764
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/VariableVO;->setValue(Ljava/lang/Object;)V

    .line 765
    invoke-static {v3}, Lcom/codemao/creativestore/bean/CloudVariable;->create(Lcom/codemao/creativestore/bean/VariableVO;)Lcom/codemao/creativestore/bean/CloudVariable;

    move-result-object v3

    .line 766
    iget-object v4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$newData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v4, v4, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->cloudVariables:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 769
    :cond_72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$finalFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8a} :catch_8b

    goto :goto_8f

    :catch_8b
    move-exception v0

    .line 771
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 775
    :goto_8f
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    const/4 v0, 0x2

    .line 776
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$finalFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".cover"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3$1;

    invoke-direct {v4, p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3$1;-><init>(Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$200(ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V

    goto :goto_d4

    .line 794
    :cond_ba
    :try_start_ba
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$newData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$finalFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    iget-object v4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$000(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c7} :catch_c8

    goto :goto_d4

    :catch_c8
    move-exception v0

    .line 796
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$100(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V

    :goto_d4
    return-void
.end method

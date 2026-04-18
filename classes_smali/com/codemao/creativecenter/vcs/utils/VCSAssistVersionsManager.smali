.class public final Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;
.super Ljava/lang/Object;
.source "VCSAssistVersionsManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVCSAssistVersionsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VCSAssistVersionsManager.kt\ncom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,183:1\n73#1,7:185\n61#1:192\n62#1,4:194\n66#1:199\n73#1,7:203\n73#1,7:210\n1819#2:184\n1819#2:193\n1820#2:198\n1820#2:200\n1819#2,2:201\n1517#2:217\n1588#2,3:218\n1819#2,2:221\n*E\n*S KotlinDebug\n*F\n+ 1 VCSAssistVersionsManager.kt\ncom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager\n*L\n25#1,7:185\n25#1:192\n25#1,4:194\n25#1:199\n99#1,7:203\n120#1,7:210\n25#1:184\n25#1:193\n25#1:198\n25#1:200\n61#1,2:201\n143#1:217\n143#1,3:218\n173#1,2:221\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;

    invoke-direct {v0}, Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;->INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matchAssistorVersion(Ljava/util/List;Ljava/lang/String;)Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;"
        }
    .end annotation

    const-string v0, "localWorkList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistorId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;

    .line 175
    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v0, v1

    goto :goto_f

    :cond_27
    return-object v0
.end method

.method public final removeLocalVersion(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "workId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistorId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    const-string v2, "CreativeCenterUtils.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_WorkVersionBean_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    .line 76
    invoke-static {v0, v3}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v3

    .line 79
    const-class v4, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;

    invoke-virtual {v3, v0, v4}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;

    if-eqz v0, :cond_8d

    .line 101
    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->getAssistWorkList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, "localWorkVersionBean.assistWorkList.iterator()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    :cond_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;

    invoke-virtual {v4}, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 105
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 110
    :cond_65
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    return-void
.end method

.method public final saveChoseWorkVersion(Ljava/lang/String;ILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "workId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "datas"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    const-string v2, "CreativeCenterUtils.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_WorkVersionBean_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 76
    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v2

    .line 79
    const-class v3, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;

    invoke-virtual {v2, v1, v3}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;

    if-eqz v1, :cond_f8

    .line 122
    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->getAssistWorkList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_68

    goto/16 :goto_f8

    .line 131
    :cond_68
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->toAssistorVersionBean()Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;

    move-result-object p1

    .line 133
    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->getAssistWorkList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;->matchAssistorVersion(Ljava/util/List;Ljava/lang/String;)Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;

    move-result-object p2

    if-eqz p2, :cond_88

    .line 136
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->getUploadVersion()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->setUploadVersion(I)V

    goto :goto_ec

    .line 138
    :cond_88
    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->getAssistWorkList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x5

    if-ge p2, v2, :cond_9b

    .line 139
    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->getAssistWorkList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ec

    .line 142
    :cond_9b
    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->getAssistWorkList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v2, "localWorkVersionBean.assistWorkList.iterator()"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p3, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_b7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cb

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 219
    check-cast v3, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    .line 144
    invoke-virtual {v3}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->toAssistorVersionBean()Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    .line 146
    :cond_cb
    :goto_cb
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e5

    .line 148
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;

    invoke-virtual {p3}, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v2, p3}, Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;->matchAssistorVersion(Ljava/util/List;Ljava/lang/String;)Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;

    move-result-object p3

    if-nez p3, :cond_cb

    .line 149
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_cb

    .line 153
    :cond_e5
    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->getAssistWorkList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :goto_ec
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_f8
    :goto_f8
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    invoke-virtual {p2}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->toAssistorVersionBean()Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance p2, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;

    invoke-direct {p2, v1, p1}, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zipAssistorAndVersion(Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;Ljava/lang/String;)V
    .registers 10

    const-string v0, "assistInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->getAssistantInfoList()Ljava/util/List;

    move-result-object v0

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    .line 27
    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->getApplyId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->setSelected(Z)V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v3

    const-string v4, "CreativeCenterUtils.getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_WorkVersionBean_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 76
    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v3

    .line 79
    const-class v4, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;

    invoke-virtual {v3, v2, v4}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;

    const/4 v3, 0x1

    if-eqz v2, :cond_aa

    .line 30
    invoke-virtual {v2}, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->getAssistWorkList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6e

    goto :goto_aa

    .line 35
    :cond_6e
    invoke-virtual {v2}, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->getAssistWorkList()Ljava/util/ArrayList;

    move-result-object v2

    .line 36
    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->getId()Ljava/lang/String;

    move-result-object v4

    .line 1819
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;

    .line 62
    invoke-virtual {v5}, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    goto :goto_92

    :cond_91
    const/4 v5, 0x0

    :goto_92
    if-nez v5, :cond_99

    .line 40
    invoke-virtual {v1, v3}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->setHasUpdate(Z)V

    goto/16 :goto_12

    .line 43
    :cond_99
    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->getUploadVersion()I

    move-result v2

    invoke-virtual {v5}, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->getUploadVersion()I

    move-result v4

    if-le v2, v4, :cond_a4

    goto :goto_a5

    :cond_a4
    const/4 v3, 0x0

    :goto_a5
    invoke-virtual {v1, v3}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->setHasUpdate(Z)V

    goto/16 :goto_12

    .line 31
    :cond_aa
    :goto_aa
    invoke-virtual {v1, v3}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->setHasUpdate(Z)V

    goto/16 :goto_12

    :cond_af
    return-void
.end method

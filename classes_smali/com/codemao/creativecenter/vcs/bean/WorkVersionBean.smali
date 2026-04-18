.class public final Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;
.super Ljava/lang/Object;
.source "WorkVersionBean.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkVersionBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkVersionBean.kt\ncom/codemao/creativecenter/vcs/bean/WorkVersionBean\n+ 2 VCSAssistVersionsManager.kt\ncom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n73#2,7:57\n1828#3,3:64\n*E\n*S KotlinDebug\n*F\n+ 1 WorkVersionBean.kt\ncom/codemao/creativecenter/vcs/bean/WorkVersionBean\n*L\n27#1,7:57\n34#1,3:64\n*E\n"
.end annotation


# instance fields
.field private final assistWorkList:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "assist_work_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;",
            ">;"
        }
    .end annotation
.end field

.field private final workId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "work_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "assistWorkList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->assistWorkList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->workId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1f

    instance-of v0, p1, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->assistWorkList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->assistWorkList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->workId:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->workId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    return p1

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    return p1
.end method

.method public final getAssistWorkList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->assistWorkList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->assistWorkList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->workId:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkVersionBean(assistWorkList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->assistWorkList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", workId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/WorkVersionBean;->workId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

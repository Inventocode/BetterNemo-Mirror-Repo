.class public Lcom/codemao/nemo/bean/WorkDetailRecommends;
.super Ljava/lang/Object;
.source "WorkDetailRecommends.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private activity_work_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private kitten_recommend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private label_id:J

.field private label_name:Ljava/lang/String;

.field private new_work_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private official_work_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private subject_work_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private system_work_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ta_work_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private user_work_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkListSize(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_f

    const/4 v0, 0x0

    .line 57
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_f
    return-object p1
.end method


# virtual methods
.method public getActivity_work_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommends;->activity_work_list:Ljava/util/List;

    return-object v0
.end method

.method public getKitten_recommend()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommends;->kitten_recommend:Ljava/util/List;

    return-object v0
.end method

.method public getLabel_id()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommends;->label_id:J

    return-wide v0
.end method

.method public getLabel_name()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommends;->label_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNew_work_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommends;->new_work_list:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/WorkDetailRecommends;->checkListSize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOfficial_work_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommends;->official_work_list:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/WorkDetailRecommends;->checkListSize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubject_work_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommends;->subject_work_list:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/WorkDetailRecommends;->checkListSize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSystem_work_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommends;->system_work_list:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/WorkDetailRecommends;->checkListSize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTa_work_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommends;->ta_work_list:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/WorkDetailRecommends;->checkListSize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUser_work_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommends;->user_work_list:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/WorkDetailRecommends;->checkListSize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.class public Lcn/codemao/android/account/bean/GradeInfoVO;
.super Ljava/lang/Object;
.source "GradeInfoVO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/account/bean/GradeInfoVO$GradeList;
    }
.end annotation


# instance fields
.field private gradeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/GradeInfoVO$GradeList;",
            ">;"
        }
    .end annotation
.end field

.field private stage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGradeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/GradeInfoVO$GradeList;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcn/codemao/android/account/bean/GradeInfoVO;->gradeList:Ljava/util/List;

    return-object v0
.end method

.method public getStage()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcn/codemao/android/account/bean/GradeInfoVO;->stage:Ljava/lang/String;

    return-object v0
.end method

.method public setGradeList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/GradeInfoVO$GradeList;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcn/codemao/android/account/bean/GradeInfoVO;->gradeList:Ljava/util/List;

    return-void
.end method

.method public setStage(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcn/codemao/android/account/bean/GradeInfoVO;->stage:Ljava/lang/String;

    return-void
.end method

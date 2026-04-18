.class public Lcn/codemao/android/account/bean/GradeInfoVO$GradeList;
.super Ljava/lang/Object;
.source "GradeInfoVO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/bean/GradeInfoVO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradeList"
.end annotation


# instance fields
.field private desc:Ljava/lang/String;

.field private grade:I

.field private recommended:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcn/codemao/android/account/bean/GradeInfoVO$GradeList;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getGrade()I
    .registers 2

    .line 44
    iget v0, p0, Lcn/codemao/android/account/bean/GradeInfoVO$GradeList;->grade:I

    return v0
.end method

.method public getRecommended()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcn/codemao/android/account/bean/GradeInfoVO$GradeList;->recommended:Z

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcn/codemao/android/account/bean/GradeInfoVO$GradeList;->desc:Ljava/lang/String;

    return-void
.end method

.method public setGrade(I)V
    .registers 2

    .line 48
    iput p1, p0, Lcn/codemao/android/account/bean/GradeInfoVO$GradeList;->grade:I

    return-void
.end method

.method public setRecommended(Z)V
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcn/codemao/android/account/bean/GradeInfoVO$GradeList;->recommended:Z

    return-void
.end method

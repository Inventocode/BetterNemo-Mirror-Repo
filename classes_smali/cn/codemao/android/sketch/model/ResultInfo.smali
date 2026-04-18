.class public Lcn/codemao/android/sketch/model/ResultInfo;
.super Ljava/lang/Object;
.source "ResultInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static RESULT_CODE_SUCCESS:I = 0x1


# instance fields
.field private centerPointX:F

.field private centerPointY:F

.field private filePath:Ljava/lang/String;

.field private resultCode:I

.field private roleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenterPointX()F
    .registers 2

    .line 40
    iget v0, p0, Lcn/codemao/android/sketch/model/ResultInfo;->centerPointX:F

    return v0
.end method

.method public getCenterPointY()F
    .registers 2

    .line 48
    iget v0, p0, Lcn/codemao/android/sketch/model/ResultInfo;->centerPointY:F

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcn/codemao/android/sketch/model/ResultInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcn/codemao/android/sketch/model/ResultInfo;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public setCenterPointX(F)V
    .registers 2

    .line 44
    iput p1, p0, Lcn/codemao/android/sketch/model/ResultInfo;->centerPointX:F

    return-void
.end method

.method public setCenterPointY(F)V
    .registers 2

    .line 52
    iput p1, p0, Lcn/codemao/android/sketch/model/ResultInfo;->centerPointY:F

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcn/codemao/android/sketch/model/ResultInfo;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(I)V
    .registers 2

    .line 24
    iput p1, p0, Lcn/codemao/android/sketch/model/ResultInfo;->resultCode:I

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcn/codemao/android/sketch/model/ResultInfo;->roleName:Ljava/lang/String;

    return-void
.end method

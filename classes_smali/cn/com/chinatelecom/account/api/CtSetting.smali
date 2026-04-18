.class public Lcn/com/chinatelecom/account/api/CtSetting;
.super Ljava/lang/Object;


# instance fields
.field private connTimeout:I

.field private readTimeout:I

.field private totalTimeout:I


# direct methods
.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/com/chinatelecom/account/api/CtSetting;->totalTimeout:I

    iput v0, p0, Lcn/com/chinatelecom/account/api/CtSetting;->connTimeout:I

    iput v0, p0, Lcn/com/chinatelecom/account/api/CtSetting;->readTimeout:I

    iput p1, p0, Lcn/com/chinatelecom/account/api/CtSetting;->connTimeout:I

    iput p2, p0, Lcn/com/chinatelecom/account/api/CtSetting;->readTimeout:I

    iput p3, p0, Lcn/com/chinatelecom/account/api/CtSetting;->totalTimeout:I

    return-void
.end method

.method public static getConnTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I
    .registers 1

    if-eqz p0, :cond_8

    iget p0, p0, Lcn/com/chinatelecom/account/api/CtSetting;->connTimeout:I

    if-gtz p0, :cond_7

    goto :goto_8

    :cond_7
    return p0

    :cond_8
    :goto_8
    const/16 p0, 0x1388

    return p0
.end method

.method public static getReadTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I
    .registers 1

    if-eqz p0, :cond_8

    iget p0, p0, Lcn/com/chinatelecom/account/api/CtSetting;->readTimeout:I

    if-gtz p0, :cond_7

    goto :goto_8

    :cond_7
    return p0

    :cond_8
    :goto_8
    const/16 p0, 0x1388

    return p0
.end method

.method public static getTotalTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I
    .registers 1

    if-eqz p0, :cond_8

    iget p0, p0, Lcn/com/chinatelecom/account/api/CtSetting;->totalTimeout:I

    if-gtz p0, :cond_7

    goto :goto_8

    :cond_7
    return p0

    :cond_8
    :goto_8
    const/16 p0, 0x2710

    return p0
.end method

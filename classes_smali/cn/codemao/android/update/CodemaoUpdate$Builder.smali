.class public Lcn/codemao/android/update/CodemaoUpdate$Builder;
.super Ljava/lang/Object;
.source "CodemaoUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/update/CodemaoUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mEnv:I

.field mIsDebug:Z

.field mPid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public builder(Landroid/content/Context;)V
    .registers 9

    .line 128
    sget-object v0, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    if-nez v0, :cond_14

    .line 129
    new-instance v0, Lcn/codemao/android/update/CodemaoUpdate;

    iget v3, p0, Lcn/codemao/android/update/CodemaoUpdate$Builder;->mEnv:I

    iget-object v4, p0, Lcn/codemao/android/update/CodemaoUpdate$Builder;->mPid:Ljava/lang/String;

    iget-boolean v5, p0, Lcn/codemao/android/update/CodemaoUpdate$Builder;->mIsDebug:Z

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/update/CodemaoUpdate;-><init>(Landroid/content/Context;ILjava/lang/String;ZLcn/codemao/android/update/CodemaoUpdate$1;)V

    sput-object v0, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    :cond_14
    return-void
.end method

.method public setChannel(Ljava/lang/String;)Lcn/codemao/android/update/CodemaoUpdate$Builder;
    .registers 2

    return-object p0
.end method

.method public setDebug(Z)Lcn/codemao/android/update/CodemaoUpdate$Builder;
    .registers 2

    .line 122
    iput-boolean p1, p0, Lcn/codemao/android/update/CodemaoUpdate$Builder;->mIsDebug:Z

    .line 123
    invoke-static {p1}, Lcn/codemao/android/update/util/LogUtils;->setIsShowLog(Z)V

    return-object p0
.end method

.method public setEnv(I)Lcn/codemao/android/update/CodemaoUpdate$Builder;
    .registers 3

    .line 97
    iput p1, p0, Lcn/codemao/android/update/CodemaoUpdate$Builder;->mEnv:I

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    goto :goto_11

    :cond_8
    const-string p1, "https://update.codemao.cn/updatev2/appsdk"

    .line 103
    sput-object p1, Lcn/codemao/android/update/util/UpdateConstants;->UPDATE_URL:Ljava/lang/String;

    goto :goto_11

    :cond_d
    const-string p1, "https://dev-update.codemao.cn/updatev2/appsdk"

    .line 100
    sput-object p1, Lcn/codemao/android/update/util/UpdateConstants;->UPDATE_URL:Ljava/lang/String;

    :goto_11
    return-object p0
.end method

.method public setPid(Ljava/lang/String;)Lcn/codemao/android/update/CodemaoUpdate$Builder;
    .registers 2

    .line 112
    iput-object p1, p0, Lcn/codemao/android/update/CodemaoUpdate$Builder;->mPid:Ljava/lang/String;

    return-object p0
.end method

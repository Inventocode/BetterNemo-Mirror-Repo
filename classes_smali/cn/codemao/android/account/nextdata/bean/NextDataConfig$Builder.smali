.class public Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;
.super Ljava/lang/Object;
.source "NextDataConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/nextdata/bean/NextDataConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, ""

    .line 143
    invoke-direct {p0, v0}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;-><init>(Lcn/codemao/android/account/nextdata/bean/NextDataConfig$1;)V

    iput-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    .line 148
    invoke-static {v0, p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->access$102(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcn/codemao/android/account/nextdata/bean/NextDataConfig;
    .registers 2

    .line 152
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;
    .registers 3

    .line 207
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-static {v0, p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->access$102(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setBgColor(I)Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;
    .registers 3

    .line 182
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-static {v0, p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->access$702(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;I)I

    return-object p0
.end method

.method public setCaptchaWidth(F)Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;
    .registers 3

    .line 157
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-static {v0, p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->access$202(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;F)F

    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;
    .registers 3

    .line 177
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-static {v0, p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->access$602(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setCloseByTouchOutside(Z)Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;
    .registers 3

    .line 187
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-static {v0, p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->access$802(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;Z)Z

    return-object p0
.end method

.method public setGravity(I)Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;
    .registers 3

    .line 192
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-static {v0, p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->access$902(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;I)I

    return-object p0
.end method

.method public setMode(Ljava/lang/String;)Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;
    .registers 3

    .line 172
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-static {v0, p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->access$502(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setRatio(F)Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;
    .registers 3

    .line 162
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-static {v0, p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->access$302(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;F)F

    return-object p0
.end method

.method public setReCheckNum(I)Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;
    .registers 3

    .line 202
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-static {v0, p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->access$1102(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;I)I

    return-object p0
.end method

.method public setShowClose(Z)Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;
    .registers 3

    .line 197
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-static {v0, p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->access$1002(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;Z)Z

    return-object p0
.end method

.method public setTip(Ljava/lang/String;)Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;
    .registers 3

    .line 167
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-static {v0, p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->access$402(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

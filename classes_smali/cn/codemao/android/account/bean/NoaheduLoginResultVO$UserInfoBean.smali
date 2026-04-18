.class public Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;
.super Ljava/lang/Object;
.source "NoaheduLoginResultVO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/bean/NoaheduLoginResultVO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfoBean"
.end annotation


# instance fields
.field private avatar_url:Ljava/lang/String;

.field private birthday:J

.field private description:Ljava/lang/String;

.field private fullname:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private nickname:Ljava/lang/String;

.field private sex:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_url()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()J
    .registers 3

    .line 129
    iget-wide v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->birthday:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFullname()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->fullname:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 81
    iget-object v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .registers 2

    .line 121
    iget v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->sex:I

    return v0
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(J)V
    .registers 3

    .line 133
    iput-wide p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->birthday:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setFullname(Ljava/lang/String;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->fullname:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setSex(I)V
    .registers 2

    .line 125
    iput p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->sex:I

    return-void
.end method

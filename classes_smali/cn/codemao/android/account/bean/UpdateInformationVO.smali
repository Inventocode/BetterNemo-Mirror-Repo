.class public Lcn/codemao/android/account/bean/UpdateInformationVO;
.super Ljava/lang/Object;
.source "UpdateInformationVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public avatar_url(Ljava/lang/String;)Lcn/codemao/android/account/bean/UpdateInformationVO;
    .registers 4

    .line 34
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    const-string v1, "avatar_url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public birthday(J)Lcn/codemao/android/account/bean/UpdateInformationVO;
    .registers 4

    .line 44
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "birthday"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public description(Ljava/lang/String;)Lcn/codemao/android/account/bean/UpdateInformationVO;
    .registers 4

    .line 49
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    const-string v1, "description"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public fullname(Ljava/lang/String;)Lcn/codemao/android/account/bean/UpdateInformationVO;
    .registers 4

    .line 25
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    const-string v1, "fullname"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .registers 3

    .line 66
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    const-string v1, "avatar_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()J
    .registers 3

    .line 76
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    const-string v1, "birthday"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    const-wide/16 v0, -0x1

    return-wide v0

    .line 78
    :cond_d
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    .line 87
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    const-string v1, "description"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 3

    .line 62
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    const-string v1, "fullname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGrade()I
    .registers 3

    .line 81
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    const-string v1, "grade"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 83
    :cond_c
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .registers 3

    .line 58
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    const-string v1, "nickname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .registers 3

    .line 70
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    const-string v1, "sex"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, -0x1

    return v0

    .line 72
    :cond_c
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public grade(I)Lcn/codemao/android/account/bean/UpdateInformationVO;
    .registers 4

    .line 29
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "grade"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public nickname(Ljava/lang/String;)Lcn/codemao/android/account/bean/UpdateInformationVO;
    .registers 4

    .line 20
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    const-string v1, "nickname"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public qq(Ljava/lang/String;)Lcn/codemao/android/account/bean/UpdateInformationVO;
    .registers 4

    .line 54
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    const-string v1, "qq"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public sex(I)Lcn/codemao/android/account/bean/UpdateInformationVO;
    .registers 4

    .line 39
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateInformationVO;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "sex"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.class public final Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;
.super Ljava/lang/Object;
.source "NctOauthResponse.kt"


# instance fields
.field private final auth:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;

.field private final user_info:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->auth:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;

    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->user_info:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->auth:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->user_info:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->copy(Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;)Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->auth:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;

    return-object v0
.end method

.method public final component2()Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->user_info:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;

    return-object v0
.end method

.method public final copy(Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;)Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;
    .registers 4

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;-><init>(Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->auth:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->auth:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->user_info:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->user_info:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getAuth()Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->auth:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;

    return-object v0
.end method

.method public final getUser_info()Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->user_info:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->auth:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->user_info:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NctOauthResponse(auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->auth:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemAuth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthResponse;->user_info:Lcom/codemao/toolssdk/model/dsbridge/compat/nct/NctOauthItemUserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

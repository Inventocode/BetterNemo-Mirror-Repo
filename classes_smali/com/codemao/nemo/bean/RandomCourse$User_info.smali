.class public Lcom/codemao/nemo/bean/RandomCourse$User_info;
.super Ljava/lang/Object;
.source "RandomCourse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/bean/RandomCourse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "User_info"
.end annotation


# instance fields
.field private avatar_url:Ljava/lang/String;

.field private id:J

.field private nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_url()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/codemao/nemo/bean/RandomCourse$User_info;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/codemao/nemo/bean/RandomCourse$User_info;->id:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/codemao/nemo/bean/RandomCourse$User_info;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/codemao/nemo/bean/RandomCourse$User_info;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 58
    iput-wide p1, p0, Lcom/codemao/nemo/bean/RandomCourse$User_info;->id:J

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/codemao/nemo/bean/RandomCourse$User_info;->nickname:Ljava/lang/String;

    return-void
.end method

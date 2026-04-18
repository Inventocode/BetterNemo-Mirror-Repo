.class public Lcom/codemao/nemo/bean/RandomCourse;
.super Ljava/lang/Object;
.source "RandomCourse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/bean/RandomCourse$User_info;
    }
.end annotation


# instance fields
.field private user_info:Lcom/codemao/nemo/bean/RandomCourse$User_info;

.field private work_id:J

.field private work_name:Ljava/lang/String;

.field private work_preview:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUser_info()Lcom/codemao/nemo/bean/RandomCourse$User_info;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/codemao/nemo/bean/RandomCourse;->user_info:Lcom/codemao/nemo/bean/RandomCourse$User_info;

    return-object v0
.end method

.method public getWork_id()J
    .registers 3

    .line 24
    iget-wide v0, p0, Lcom/codemao/nemo/bean/RandomCourse;->work_id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/codemao/nemo/bean/RandomCourse;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public getWork_preview()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/codemao/nemo/bean/RandomCourse;->work_preview:Ljava/lang/String;

    return-object v0
.end method

.method public setUser_info(Lcom/codemao/nemo/bean/RandomCourse$User_info;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/codemao/nemo/bean/RandomCourse;->user_info:Lcom/codemao/nemo/bean/RandomCourse$User_info;

    return-void
.end method

.method public setWork_id(J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/codemao/nemo/bean/RandomCourse;->work_id:J

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/codemao/nemo/bean/RandomCourse;->work_name:Ljava/lang/String;

    return-void
.end method

.method public setWork_preview(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/codemao/nemo/bean/RandomCourse;->work_preview:Ljava/lang/String;

    return-void
.end method

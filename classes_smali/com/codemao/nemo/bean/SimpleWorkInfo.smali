.class public Lcom/codemao/nemo/bean/SimpleWorkInfo;
.super Ljava/lang/Object;
.source "SimpleWorkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private error_code:Ljava/lang/String;

.field private id:J

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/bean/SimpleWorkInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/codemao/nemo/bean/SimpleWorkInfo;->id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/SimpleWorkInfo;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/nemo/bean/SimpleWorkInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 19
    iput-wide p1, p0, Lcom/codemao/nemo/bean/SimpleWorkInfo;->id:J

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/nemo/bean/SimpleWorkInfo;->work_name:Ljava/lang/String;

    return-void
.end method

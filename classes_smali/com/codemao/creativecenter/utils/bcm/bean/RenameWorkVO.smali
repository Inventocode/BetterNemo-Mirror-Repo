.class public Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;
.super Ljava/lang/Object;
.source "RenameWorkVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private is_check_name:Z

.field private name:Ljava/lang/String;

.field private work_type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWork_type()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;->work_type:I

    return v0
.end method

.method public isIs_check_name()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;->is_check_name:Z

    return v0
.end method

.method public setIs_check_name(Z)V
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;->is_check_name:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;->name:Ljava/lang/String;

    return-void
.end method

.method public setWork_type(I)V
    .registers 2

    .line 19
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;->work_type:I

    return-void
.end method

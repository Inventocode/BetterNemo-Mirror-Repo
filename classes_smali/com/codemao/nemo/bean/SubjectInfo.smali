.class public Lcom/codemao/nemo/bean/SubjectInfo;
.super Ljava/lang/Object;
.source "SubjectInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private created_at:Ljava/lang/String;

.field private id:I

.field private subject_background_one:Ljava/lang/String;

.field private subject_background_two:Ljava/lang/String;

.field private subject_banner_id:Ljava/lang/String;

.field private subject_description:Ljava/lang/String;

.field private subject_name:Ljava/lang/String;

.field private subject_type:Ljava/lang/String;

.field private subject_works:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/SubjectWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private updated_at:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreated_at()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/nemo/bean/SubjectInfo;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/codemao/nemo/bean/SubjectInfo;->id:I

    return v0
.end method

.method public getSubject_background_one()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/codemao/nemo/bean/SubjectInfo;->subject_background_one:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject_background_two()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/codemao/nemo/bean/SubjectInfo;->subject_background_two:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject_banner_id()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/codemao/nemo/bean/SubjectInfo;->subject_banner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject_description()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/codemao/nemo/bean/SubjectInfo;->subject_description:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject_name()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/bean/SubjectInfo;->subject_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject_type()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/bean/SubjectInfo;->subject_type:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject_works()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/SubjectWorkInfo;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/bean/SubjectInfo;->subject_works:Ljava/util/List;

    return-object v0
.end method

.method public getUpdated_at()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/codemao/nemo/bean/SubjectInfo;->updated_at:Ljava/lang/String;

    return-object v0
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/codemao/nemo/bean/SubjectInfo;->created_at:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/codemao/nemo/bean/SubjectInfo;->id:I

    return-void
.end method

.method public setSubject_background_one(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/codemao/nemo/bean/SubjectInfo;->subject_background_one:Ljava/lang/String;

    return-void
.end method

.method public setSubject_background_two(Ljava/lang/String;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/codemao/nemo/bean/SubjectInfo;->subject_background_two:Ljava/lang/String;

    return-void
.end method

.method public setSubject_banner_id(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/codemao/nemo/bean/SubjectInfo;->subject_banner_id:Ljava/lang/String;

    return-void
.end method

.method public setSubject_description(Ljava/lang/String;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/codemao/nemo/bean/SubjectInfo;->subject_description:Ljava/lang/String;

    return-void
.end method

.method public setSubject_name(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/codemao/nemo/bean/SubjectInfo;->subject_name:Ljava/lang/String;

    return-void
.end method

.method public setSubject_type(Ljava/lang/String;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/codemao/nemo/bean/SubjectInfo;->subject_type:Ljava/lang/String;

    return-void
.end method

.method public setSubject_works(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/SubjectWorkInfo;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/codemao/nemo/bean/SubjectInfo;->subject_works:Ljava/util/List;

    return-void
.end method

.method public setUpdated_at(Ljava/lang/String;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/codemao/nemo/bean/SubjectInfo;->updated_at:Ljava/lang/String;

    return-void
.end method

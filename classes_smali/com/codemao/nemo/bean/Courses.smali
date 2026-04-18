.class public Lcom/codemao/nemo/bean/Courses;
.super Ljava/lang/Object;
.source "Courses.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private offical_works:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private user_works:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseWorkInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffical_works()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseWorkInfo;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/codemao/nemo/bean/Courses;->offical_works:Ljava/util/List;

    return-object v0
.end method

.method public getUser_works()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseWorkInfo;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/bean/Courses;->user_works:Ljava/util/List;

    return-object v0
.end method

.method public setOffical_works(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseWorkInfo;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/codemao/nemo/bean/Courses;->offical_works:Ljava/util/List;

    return-void
.end method

.method public setUser_works(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseWorkInfo;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/bean/Courses;->user_works:Ljava/util/List;

    return-void
.end method

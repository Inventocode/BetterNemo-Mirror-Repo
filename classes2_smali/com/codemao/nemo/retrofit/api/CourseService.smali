.class public interface abstract Lcom/codemao/nemo/retrofit/api/CourseService;
.super Ljava/lang/Object;
.source "CourseService.java"


# virtual methods
.method public abstract getCourseDetail(JII)Lio/reactivex/Observable;
    .param p1  # J
        .annotation runtime Lretrofit2/http/Query;
            value = "course_package_id"
        .end annotation
    .end param
    .param p3  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "offset"
        .end annotation
    .end param
    .param p4  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/CoursePackageData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/creation-tools/v1/course/list/search"
    .end annotation
.end method

.method public abstract getCoursesList(III)Lio/reactivex/Observable;
    .param p1  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "offset"
        .end annotation
    .end param
    .param p2  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p3  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "platform"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/creation-tools/v1/course/package/list"
    .end annotation
.end method

.method public abstract getPublicCourses(II)Lio/reactivex/Observable;
    .param p1  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "offset"
        .end annotation
    .end param
    .param p2  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/CoursePackageData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/creation-tools/v1/course/publish/list"
    .end annotation
.end method

.method public abstract putPlayers(J)Lio/reactivex/Observable;
    .param p1  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "course_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "nemo/v2/courses/{course_id}/play-record"
    .end annotation
.end method

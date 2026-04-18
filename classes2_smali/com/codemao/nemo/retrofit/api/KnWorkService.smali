.class public interface abstract Lcom/codemao/nemo/retrofit/api/KnWorkService;
.super Ljava/lang/Object;
.source "KnWorkService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/retrofit/api/KnWorkService$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract cancelPublishWork(Ljava/lang/String;J)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "host"
        .end annotation
    .end param
    .param p2  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "workId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "https://{host}/neko/community/work/unpublish/{workId}"
    .end annotation
.end method

.method public abstract cleanRecycleBin(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "host"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "https://{host}/neko/works/permanently"
    .end annotation
.end method

.method public abstract copyWork(Ljava/lang/String;Lcom/codemao/nemo/bean/body/WorkRequestBody;)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "host"
        .end annotation
    .end param
    .param p2  # Lcom/codemao/nemo/bean/body/WorkRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/bean/body/WorkRequestBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "https://{host}/neko/works/copy"
    .end annotation
.end method

.method public abstract deleteWork(Ljava/lang/String;JI)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "host"
        .end annotation
    .end param
    .param p2  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "workId"
        .end annotation
    .end param
    .param p4  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "force"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "https://{host}/neko/works/{workId}"
    .end annotation
.end method

.method public abstract deleteWorkForever(Ljava/lang/String;J)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "host"
        .end annotation
    .end param
    .param p2  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "work_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "https://{host}/neko/works/{work_id}/permanently"
    .end annotation
.end method

.method public abstract getKnTemplateList(Ljava/lang/String;III)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "host"
        .end annotation
    .end param
    .param p2  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "subject_id"
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
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/KnTemplateListResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "https://{host}/neko/sample/list"
    .end annotation
.end method

.method public abstract getKnWorkList(Ljava/lang/String;II)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "host"
        .end annotation
    .end param
    .param p2  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "offset"
        .end annotation
    .end param
    .param p3  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "https://{host}/neko/works/v2/list/user"
    .end annotation
.end method

.method public abstract getKnWorkPublishedList(Ljava/lang/String;II)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "host"
        .end annotation
    .end param
    .param p2  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "offset"
        .end annotation
    .end param
    .param p3  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "https://{host}/neko/works/list/user/published"
    .end annotation
.end method

.method public abstract getWorkKnListRecycleBin(Ljava/lang/String;III)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "host"
        .end annotation
    .end param
    .param p2  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "offset"
        .end annotation
    .end param
    .param p3  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p4  # I
        .annotation runtime Lretrofit2/http/Query;
            value = "status"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/KnWorkListRecycleBinResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "https://{host}/neko/works/v2/list/user"
    .end annotation
.end method

.method public abstract recoverWork(Ljava/lang/String;J)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "host"
        .end annotation
    .end param
    .param p2  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "work_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "https://{host}/neko/works/{work_id}/recover"
    .end annotation
.end method

.method public abstract renameWork(JLcom/codemao/nemo/bean/body/WorkRenameKnBody;)Lio/reactivex/Observable;
    .param p1  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "work_id"
        .end annotation
    .end param
    .param p3  # Lcom/codemao/nemo/bean/body/WorkRenameKnBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/bean/body/WorkRenameKnBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "/tiger/work/works/{work_id}/rename"
    .end annotation
.end method

.method public abstract searchKnWorkList(Ljava/lang/String;Ljava/lang/String;II)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "host"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "name"
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
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "https://{host}/neko/works/v2/list/user"
    .end annotation
.end method

.method public abstract verifyImportLink(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation

    .annotation runtime Lretrofit2/http/Streaming;
    .end annotation
.end method

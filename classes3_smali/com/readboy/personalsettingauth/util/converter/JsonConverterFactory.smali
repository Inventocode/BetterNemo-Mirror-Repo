.class public Lcom/readboy/personalsettingauth/util/converter/JsonConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "JsonConverterFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    return-void
.end method

.method public static create()Lcom/readboy/personalsettingauth/util/converter/JsonConverterFactory;
    .registers 1

    .line 19
    new-instance v0, Lcom/readboy/personalsettingauth/util/converter/JsonConverterFactory;

    invoke-direct {v0}, Lcom/readboy/personalsettingauth/util/converter/JsonConverterFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance p1, Lcom/readboy/personalsettingauth/util/converter/JsonRequestBodyConverter;

    invoke-direct {p1}, Lcom/readboy/personalsettingauth/util/converter/JsonRequestBodyConverter;-><init>()V

    return-object p1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 24
    new-instance p1, Lcom/readboy/personalsettingauth/util/converter/JsonResponseBodyConverter;

    invoke-direct {p1}, Lcom/readboy/personalsettingauth/util/converter/JsonResponseBodyConverter;-><init>()V

    return-object p1
.end method

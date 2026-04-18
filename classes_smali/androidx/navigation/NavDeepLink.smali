.class public final Landroidx/navigation/NavDeepLink;
.super Ljava/lang/Object;
.source "NavDeepLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavDeepLink$Builder;,
        Landroidx/navigation/NavDeepLink$MimeType;,
        Landroidx/navigation/NavDeepLink$ParamQuery;
    }
.end annotation


# static fields
.field private static final SCHEME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mArguments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExactDeepLink:Z

.field private mIsParameterizedQuery:Z

.field private final mMimeType:Ljava/lang/String;

.field private mMimeTypePattern:Ljava/util/regex/Pattern;

.field private final mParamArgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavDeepLink$ParamQuery;",
            ">;"
        }
    .end annotation
.end field

.field private mPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^[a-zA-Z]+[+\\w\\-.]*:"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/navigation/NavDeepLink;->SCHEME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroidx/navigation/NavDeepLink;->mArguments:Ljava/util/ArrayList;

    .line 41
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Landroidx/navigation/NavDeepLink;->mParamArgMap:Ljava/util/Map;

    const/4 v3, 0x0

    .line 43
    iput-object v3, v0, Landroidx/navigation/NavDeepLink;->mPattern:Ljava/util/regex/Pattern;

    const/4 v4, 0x0

    .line 44
    iput-boolean v4, v0, Landroidx/navigation/NavDeepLink;->mExactDeepLink:Z

    .line 45
    iput-boolean v4, v0, Landroidx/navigation/NavDeepLink;->mIsParameterizedQuery:Z

    .line 50
    iput-object v3, v0, Landroidx/navigation/NavDeepLink;->mMimeTypePattern:Ljava/util/regex/Pattern;

    move-object/from16 v3, p2

    .line 55
    iput-object v3, v0, Landroidx/navigation/NavDeepLink;->mAction:Ljava/lang/String;

    .line 56
    iput-object v2, v0, Landroidx/navigation/NavDeepLink;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_102

    .line 58
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_36

    const/4 v5, 0x1

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    :goto_37
    iput-boolean v5, v0, Landroidx/navigation/NavDeepLink;->mIsParameterizedQuery:Z

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "^"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    sget-object v7, Landroidx/navigation/NavDeepLink;->SCHEME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_51

    const-string v7, "http[s]?://"

    .line 63
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    const-string v7, "\\{(.+?)\\}"

    .line 65
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 66
    iget-boolean v8, v0, Landroidx/navigation/NavDeepLink;->mIsParameterizedQuery:Z

    const-string v9, "\\E.*\\Q"

    const-string v10, ".*"

    if-eqz v8, :cond_ed

    const-string v8, "(\\?)"

    .line 67
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 68
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_7a

    .line 69
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5, v7}, Landroidx/navigation/NavDeepLink;->buildPathRegex(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;)Z

    .line 71
    :cond_7a
    iput-boolean v4, v0, Landroidx/navigation/NavDeepLink;->mExactDeepLink:Z

    .line 72
    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_84
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 73
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-virtual {v3, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 75
    invoke-virtual {v7, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 77
    new-instance v14, Landroidx/navigation/NavDeepLink$ParamQuery;

    invoke-direct {v14}, Landroidx/navigation/NavDeepLink$ParamQuery;-><init>()V

    const/4 v15, 0x0

    .line 79
    :goto_a3
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_ca

    .line 80
    invoke-virtual {v13, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroidx/navigation/NavDeepLink$ParamQuery;->addArgumentName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 81
    invoke-virtual {v12, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(.+?)?"

    .line 83
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    const/4 v4, 0x0

    goto :goto_a3

    .line 86
    :cond_ca
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v15, v4, :cond_db

    .line 87
    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_db
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroidx/navigation/NavDeepLink$ParamQuery;->setParamRegex(Ljava/lang/String;)V

    .line 92
    iget-object v4, v0, Landroidx/navigation/NavDeepLink;->mParamArgMap:Ljava/util/Map;

    invoke-interface {v4, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    goto :goto_84

    .line 95
    :cond_ed
    invoke-direct {v0, v1, v5, v7}, Landroidx/navigation/NavDeepLink;->buildPathRegex(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/navigation/NavDeepLink;->mExactDeepLink:Z

    .line 100
    :cond_f3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    .line 101
    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Landroidx/navigation/NavDeepLink;->mPattern:Ljava/util/regex/Pattern;

    :cond_102
    if-eqz v2, :cond_166

    const-string v1, "^[\\s\\S]+/[\\s\\S]+$"

    .line 105
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 114
    new-instance v1, Landroidx/navigation/NavDeepLink$MimeType;

    invoke-direct {v1, v2}, Landroidx/navigation/NavDeepLink$MimeType;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/navigation/NavDeepLink$MimeType;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|[*]+)/("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/navigation/NavDeepLink$MimeType;->mSubType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|[*]+)$"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*|[*]"

    const-string v3, "[\\s\\S]"

    .line 121
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Landroidx/navigation/NavDeepLink;->mMimeTypePattern:Ljava/util/regex/Pattern;

    goto :goto_166

    .line 109
    :cond_14a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The given mimeType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match to required \"type/subtype\" format"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_166
    :goto_166
    return-void
.end method

.method private buildPathRegex(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;)Z
    .registers 9

    .line 132
    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    const-string v0, ".*"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 136
    :goto_e
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 137
    invoke-virtual {p3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v4, p0, Landroidx/navigation/NavDeepLink;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(.+?)"

    .line 141
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    const/4 v0, 0x0

    goto :goto_e

    .line 145
    :cond_37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ge v3, p3, :cond_48

    .line 147
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    const-string p1, "($|(\\?(.)*))"

    .line 153
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0
.end method

.method private parseArgument(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)Z
    .registers 5

    if-eqz p4, :cond_c

    .line 297
    invoke-virtual {p4}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object p4

    .line 299
    :try_start_6
    invoke-virtual {p4, p1, p2, p3}, Landroidx/navigation/NavType;->parseAndPut(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    const/4 p1, 0x1

    return p1

    .line 307
    :cond_c
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method getMatchingArguments(Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    return-object v2

    .line 254
    :cond_12
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 255
    iget-object v3, p0, Landroidx/navigation/NavDeepLink;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1f
    if-ge v5, v3, :cond_40

    .line 257
    iget-object v6, p0, Landroidx/navigation/NavDeepLink;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    .line 258
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 259
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation/NavArgument;

    .line 260
    invoke-direct {p0, v1, v6, v7, v8}, Landroidx/navigation/NavDeepLink;->parseArgument(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)Z

    move-result v6

    if-eqz v6, :cond_1f

    return-object v2

    .line 264
    :cond_40
    iget-boolean v0, p0, Landroidx/navigation/NavDeepLink;->mIsParameterizedQuery:Z

    if-eqz v0, :cond_b5

    .line 265
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->mParamArgMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 267
    iget-object v5, p0, Landroidx/navigation/NavDeepLink;->mParamArgMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavDeepLink$ParamQuery;

    .line 268
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7b

    .line 271
    invoke-virtual {v5}, Landroidx/navigation/NavDeepLink$ParamQuery;->getParamRegex()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 272
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_7c

    return-object v2

    :cond_7b
    move-object v3, v2

    :cond_7c
    const/4 v6, 0x0

    .line 277
    :goto_7d
    invoke-virtual {v5}, Landroidx/navigation/NavDeepLink$ParamQuery;->size()I

    move-result v7

    if-ge v6, v7, :cond_4e

    if-eqz v3, :cond_90

    add-int/lit8 v7, v6, 0x1

    .line 280
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_91

    :cond_90
    move-object v7, v2

    .line 282
    :goto_91
    invoke-virtual {v5, v6}, Landroidx/navigation/NavDeepLink$ParamQuery;->getArgumentName(I)Ljava/lang/String;

    move-result-object v8

    .line 283
    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/navigation/NavArgument;

    if-eqz v7, :cond_b2

    const-string v10, "[{}]"

    const-string v11, ""

    .line 285
    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b2

    .line 286
    invoke-direct {p0, v1, v8, v7, v9}, Landroidx/navigation/NavDeepLink;->parseArgument(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)Z

    move-result v7

    if-eqz v7, :cond_b2

    return-object v2

    :cond_b2
    add-int/lit8 v6, v6, 0x1

    goto :goto_7d

    :cond_b5
    return-object v1
.end method

.method getMimeTypeMatchRating(Ljava/lang/String;)I
    .registers 4

    .line 240
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->mMimeTypePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_22

    .line 244
    :cond_11
    new-instance v0, Landroidx/navigation/NavDeepLink$MimeType;

    iget-object v1, p0, Landroidx/navigation/NavDeepLink;->mMimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/navigation/NavDeepLink$MimeType;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroidx/navigation/NavDeepLink$MimeType;

    invoke-direct {v1, p1}, Landroidx/navigation/NavDeepLink$MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/navigation/NavDeepLink$MimeType;->compareTo(Landroidx/navigation/NavDeepLink$MimeType;)I

    move-result p1

    return p1

    :cond_22
    :goto_22
    const/4 p1, -0x1

    return p1
.end method

.method isExactDeepLink()Z
    .registers 2

    .line 203
    iget-boolean v0, p0, Landroidx/navigation/NavDeepLink;->mExactDeepLink:Z

    return v0
.end method

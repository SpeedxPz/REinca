.class final Lcom/igaworks/gson/internal/bind/TypeAdapters$18;
.super Lcom/igaworks/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/igaworks/gson/TypeAdapter",
        "<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/igaworks/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/internal/bind/TypeAdapters$18;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/math/BigInteger;
    .locals 3
    .param p1, "in"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/igaworks/gson/stream/JsonToken;->NULL:Lcom/igaworks/gson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    .line 430
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextNull()V

    .line 431
    const/4 v1, 0x0

    .line 434
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/igaworks/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/igaworks/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/internal/bind/TypeAdapters$18;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/math/BigInteger;)V

    return-void
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "out"    # Lcom/igaworks/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p1, p2}, Lcom/igaworks/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/igaworks/gson/stream/JsonWriter;

    .line 442
    return-void
.end method
